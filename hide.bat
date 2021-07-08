git clone %1 %2
cd %2
git filter-repo --mailmap ../my-mailmap
git remote add origin %1
git fetch origin
git rebase master origin/master
git push -f origin master
git log --pretty=format:"%%h %%ce %%ae"
cd ..