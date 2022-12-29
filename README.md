# notify_test_file_update_between_latest_two_merge_commits
PRマージ時にテストファイル作成更新があった場合に通知するカスタムアクション。

# 使い方
```yml
name: Test Update Notify
on:
  pull_request:
    types:
      - closed
jobs:
  test_update_notify:
    if: ${{ (github.event_name == 'workflow_dispatch' || github.event.pull_request.merged == true) }}
    runs-on: ubuntu-latest
    steps:
      - uses: setsumaru1992/notify_test_file_update_between_latest_two_merge_commits@v0.0.3
        with:
          slack_webhook_url: ${{ secrets.SLACK_WEBHOOK_URL }}
```

# Inputs
## slack_webhook_url
**Required** テスト更新を通知する先のSlackのWebhookURL

# 注意事項
## このアクションを使用するイベントトリガー
このアクションは`workflow_dispatch`もしくはPRのマージ時のみ使用するようにしてください

```yml
on: workflow_dispatch

# or

on:
  pull_request:
    types:
      - closed
jobs:
  test_update_notify:
    if: ${{ (github.event_name == 'workflow_dispatch' || github.event.pull_request.merged == true) }}
    runs-on: ubuntu-latest
```

## 差分を認識できるテストファイル
Github上でマージされた「Merge pull request」というコミットメッセージをコミットをマージと認識します。
マージコミットがない場合、以下のエラーが起きる可能性があります。

```sh
warning: Not a git repository. Use --no-index to compare two paths outside a working tree
usage: git diff --no-index [<options>] <path> <path>
```
