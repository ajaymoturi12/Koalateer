# Koalateer
Koalateer is an iOS app aimed at connecting high school and college students to local volunteering opportunities. It streamlines both the application process for students and serves as a platform for organizations and nonprofits to publish their upcoming opportunities.

## Project Setup
1.  Clone the repository. Open a terminal window, navigate to your desired location, and type `git clone https://github.com/ajaymoturi12/Koalateer.git`. Open the project in Xcode
2.  Change the development team to your personal account. Click on "Koalateer" at the top of the hierarchy view to navigate to build settings. Go to the "Signing & Capabilities" tab. Switch the team to your personal account
  > <img width="1130" alt="0signIn" src="https://user-images.githubusercontent.com/30359960/158496363-9ae93d76-6e3b-44ca-bca4-ae58426e4cf0.png">
3.  Build the project.
4.  You may need to exit out of Xcode and reopen it for the project to build successfully.

## Make changes to the repository

1. Sign into your GitHub account in Xcode
    1. Open the Xcode preferences (`cmd + ,`), switch to the Accounts tab and use the Add button. Choose your GitHub account 
        > ![1-1accounts](https://user-images.githubusercontent.com/30359960/158496475-5e731cd3-690a-41a2-bc91-00ae4b29e374.png)
    2. Enter your GitHub account name and password 
        > ![1-2password](https://user-images.githubusercontent.com/30359960/158496487-87dbfdd5-557f-4ed7-97f8-2e0e57d87cb4.png)
2. Make a new branch from the develop branch. On the GitHub website, go to the develop branch. Create a new branch from the develop branch 
    > <img width="959" alt="2createBranch" src="https://user-images.githubusercontent.com/30359960/158496651-50daa079-6e25-4cae-b386-5af91d22f598.png">
3. In Xcode, fetch changes. This makes it so you can see any new branches that were created remotely 
    > <img width="304" alt="5fetchChanges" src="https://user-images.githubusercontent.com/30359960/158496690-8c29d57d-3767-4ec6-a7b7-f4dbbd783fa1.png">
4. In Xcode, checkout your branch. Navigate to the source control tab by pressing `cmd + 2`. Checkout your branch by navigating to `Remotes/origin` and right clicking on your branch name and choosing `Check Out...`
5. Make changes to your branch
6. Commit and push your changes to your branch. Choose `Source Control/Commit...` from the menu bar. Check push to remote and make sure the correct branch is selected. Press the `Commit` button at the bottom right corner
    > <img width="304" alt="5fetchChanges" src="https://user-images.githubusercontent.com/30359960/158496690-8c29d57d-3767-4ec6-a7b7-f4dbbd783fa1.png"> 
    > <img width="1331" alt="4commitAndPush" src="https://user-images.githubusercontent.com/30359960/158496727-5aca80a5-8161-4849-b6c5-07f713f3233f.png">
7. Fetch and pull changes from develop branch 
    > <img width="304" alt="5fetchChanges" src="https://user-images.githubusercontent.com/30359960/158496690-8c29d57d-3767-4ec6-a7b7-f4dbbd783fa1.png"> 
    > <img width="464" alt="6pullDevelop" src="https://user-images.githubusercontent.com/30359960/158496707-46e49579-fc84-4a65-b6a2-d0874b75424b.png">
8. Create a pull request to merge into the develop branch 
    > <img width="1310" alt="7createPullRequest" src="https://user-images.githubusercontent.com/30359960/158497467-c3219c9b-1e9f-4734-8344-5d5fe1ad7c11.png"> 
    > <img width="951" alt="8createPullRequest2" src="https://user-images.githubusercontent.com/30359960/158497493-0ad6a6b8-efc6-4604-a84b-c03afe252517.png">
9. Add wellsfletcher or one of the officers as a reviewer 
    > <img width="1326" alt="9reviewers" src="https://user-images.githubusercontent.com/30359960/158497511-2ea932e4-328f-47b5-a3ec-35c16f034676.png">
10. The officers will look over your changes, and will either accept your pull request or decline it and tell you what to fix
11. Repeat

## Relax
If you are not super familiar with Git, relax. The repository is setup so that you can't directly commit to the `main` or `develop` branches. You also can't merge your branch into the `main` or `develop` branches without your merge request being reviewed. This means it is very hard to accidentally break everything. Just be careful not to lose your own changes you've made.

Also, don't worry about making extraneous branches or commits. We don't mind :)
