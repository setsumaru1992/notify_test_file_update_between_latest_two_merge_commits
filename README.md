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
      - uses: setsumaru1992/notify_test_file_update_between_latest_two_merge_commits@v0.0.1
        with:
          slack_webhook_url: ${{ secrets.SLACK_WEBHOOK_URL }}
```

# Inputs
## slack_webhook_url
**Required** テスト更新を通知する先のSlackのWebhookURL

# 注意事項
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
