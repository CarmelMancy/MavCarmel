Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ echo "Hi Welcome to Git in main" >> greetingMain.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git status
On branch main
Your branch is ahead of 'origin/main' by 3 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ./

nothing added to commit but untracked files present (use "git add" to track)

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git add .
warning: LF will be replaced by CRLF in Git_Assignment/greetingMain.txt.
The file will have its original line endings in your working directory

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git status
On branch main
Your branch is ahead of 'origin/main' by 3 commits.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   greetingMain.txt


Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git commit -am "Done in main"
[main 4e72425] Done in main
 1 file changed, 1 insertion(+)
 create mode 100644 Git_Assignment/greetingMain.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git diff main

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git branch greeting

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git checkout greeting
Switched to branch 'greeting'

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (greeting)
$ echo "Hi Welcome to Git in Branch" >> greetingbranch.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (greeting)
$ git status
On branch greeting
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        greetingbranch.txt

nothing added to commit but untracked files present (use "git add" to track)

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (greeting)
$ git add .
warning: LF will be replaced by CRLF in Git_Assignment/greetingbranch.txt.
The file will have its original line endings in your working directory

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (greeting)
$ git commit -am "Added file in branch"
[greeting 6bd8e5d] Added file in branch
 1 file changed, 1 insertion(+)
 create mode 100644 Git_Assignment/greetingbranch.txt

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (greeting)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

Admin@Lenovo MINGW64 ~/Desktop/MG/MavCarmel/Git_Assignment (main)
$ git merge greeting
Updating 4e72425..6bd8e5d
Fast-forward
 Git_Assignment/greetingbranch.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 Git_Assignment/greetingbranch.txt
