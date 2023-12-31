#  git 仓库初始化
```shell
git clone xxx

git init .
```

# 开始开发

- new branch
```shell
git checkout -b branch_name
```

- list branch

```shell
git branch
```

- show history
```shell
git log
```

- switch branch
```shell
git checkout branch_name
```

- add changes

```shell
git add file_name
```

- show status

```shell
git status
```

- check changes
```shell
git show [commit_id]
```

- push origin
```shell
git status
git add
git commit -m"commit message" # 也可以git commit -e
git show
git push origin <branch_name>

```

- fix review
```shell
git status
git add
git commit --amend
git show
git push origin <branch_name> -f  # 等价于 --force, 只能 force push 你自己的分支
```

- fix conflict

```shell
git checkout main/master
git pull origin main/master
git checkout branch_dev
git rebase main/master
# fix conflict
# git add
# git rebase --continue
git push origin -f
```

- update master/main
```shell
git checkout main/master
git pull origin main/master # 直接 git pull 也可以
```

- push commit to other's github repo
    1. 登录github, 进入目标仓库的github主页(这里假设git clone链接为git_link_target), 点击fork(这里已经好了, 假设fork之后你的repo的clone 链接为git_link_forked),
    2. 第一次clone的时候要建立一下到upstream的关联, 如果clone好了就只需要执行第二个命令

    ```shell
    git clone git_link_forked
    git remote add upstream git_link_target
    ```

    3. 后续每次操作都是这样的

    ```shell
    git fetch upstream  # 获取更新
    git checkout master(main)
    git rebase upstream/master(main)
    git checkout -b <your_branch>
    # edit filename ...
    git add <filename>
    git commit -m"msg"
    git push origin <your_branch>
    # 然后在 github 上点那个compare and create merge request
    # 每次都要从fetch upstream 开始哦
    ```


