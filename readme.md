## Manual install
- Clipy

### Setup multiple Git hub accounts:
 [core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
  ignorecase = true
  precomposeunicode = true
[remote "origin"]
  url = git@github-ikigai:Ikigai-pt/interview.git
  fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
  remote = origin
  merge = refs/heads/master
[user]
  name = ikigai-pt
  email = pradeep.ikigai@gmail.com
[branch "draft"]
  remote = origin
  merge = refs/heads/draft
[branch "solved"]
  remote = origin
  merge = refs/heads/solved
[branch "04_04_18"]
  remote = origin
  merge = refs/heads/04_04_18
