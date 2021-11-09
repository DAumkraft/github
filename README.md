# github
## GitHub. HW_1
### 1. На локальном репозитории сделать ветки:
- git branch BranchName
### 2. Запушить все ветки на внешний репозиторий
- git push --all
### 3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта
- touch BugReport_Sample.txt
- vim BugReport_Sample.txt
### 4. Запушить структуру багрепорта на внешний репозиторий
- git add .
- git commit -m "Added BugReport_Sample.txt"
- git push
### 5. Вмержить ветку Bag Reports в Main
- git checkout main
- git merge Bug_Reports
### 6. Запушить main на внешний репозиторий.
- git push
### 7. В ветке CheckLists набросать структуру чек листа.
- git checkout CheckLists
- touch Checklist_Sample.txt
- vim Checklist_Sample.txt
### 8. Запушить структуру на внешний репозиторий
- git add .
- git commit -m "Added Checklist_Sample.txt"
- git push
### 9. На внешнем репозитории сделать Pull Request ветки CheckLists в main
- Нажмаем Compare & pull request
- Create pull request
- Merge pull request
### 10. Синхронизировать Внешнюю и Локальную ветки Main
- git pull


