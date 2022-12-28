# notify_test_file_update_between_latest_two_merge_commits
PRマージ時にテスト追加があった場合に通知するカスタムアクション。

# 注意事項
このアクションは`workflow_dispatch`もしくはPRのマージ時のみ使用するようにしてください

```
on: workflow_dispatch

# or

on:
  pull_request:
    types:
      - closed
jobs:
  somejob:
    if: ${{ (github.event_name == 'workflow_dispatch' || github.event.pull_request.merged == true) }}
    runs-on: ubuntu-latest
```

# 使い方
