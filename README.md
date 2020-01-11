# Project guidelines
By Peter Manyara (duh! :blush:)
### Progression
---
We'll adopt a modular expansion approach. Every new section is housed in its own .tex file to prevent merging conflicts. See the main file proosal.tex for illustration. Each modular file doesnt require separate initialization, that is:
```
% Inside the main 'proposal.tex' file
\documentclass[]{}
\usepackage[]{}
\begin{document}
```
You'll notice they're all in the main file. To add your subsection, just jump right into it with:
```
% Inside the subsection 'New_subsection.tex' file
\subsection{My subsection}
```
Then to link the subsection, add the following line to the section file
```
\input{Subfolders/New_section.tex}
```
> \input{} basically expands the code in the file referenced at the point where it's invoked. Therefore, while working in subsection files, if referencing external files, do it as if your current working directory is the directory of the main file 'proposal.tex'.

### Commit guidelines
---
Commit message should henceforth clearly indicate the changes introduced ... to the source code. If you feel like touching a branch, go ahead ... but touch your own :stuck_out_tongue_winking_eye:.
The way to commit is:
```
$ git commit -a -m "Commit Message"
```
The `-a` switch saves you from having to `$ git add .` first. You have both options. Suit yourself. Of course take heed of the outputs from these commands. They can save you a lot of googling should you desire to undo whatever you've done or do a related follow-up.
Do not over-commit. Significant changes worthy of commit are addition of a subsection (seeing as sections are damn huge) or finalization of one. See tagging guidelines. Should a mistake occur, fix the mistake in the commit (dot the Is and whatnot) then: (-m switch applies only when its the commit message that's sick.)
```
$ git commit --amend -m "Fixed commit message."
```

### Tagging Guidelines
---
X represents a number. Letter is standard suffix. Quarter baked work is welcome for commit. X is any number from 0 to 100. Should be less to prevent branch saturation, but c'est la vie. Damn the spelling I'm not French.

**X.Xa**
: Alpha edition (Work in progress, absolutely not ready for submission). Shoddy diagrams, messy or absent citations.

**X.Xb** 
: Beta edition (Half baked, but at least ready for peer review). Diagrams in final state.

**X.X**
: No suffix. Release version (Readily submittable for supervisor scrutiny). Diagrams, citations and layouts finalized. No errors.

You add a tag by first committing then:
```
$ git tag -a v X.Xz -m "Tagging Message"
```
### Branching
---
So we have 3 branches already:
- ampersand
- grande
- master

Master takes **X.X** versions (mainly) ... I mean we're only human, right? I'm about to push *v0.1a* right now just because of this readme lol. Let's at least try to push only **X.Xb** versions.
This is how we'll our changes onto master branch:
```
$ git fetch # Checks remote repo's metadata for changes (Actually unnecessary)
$ git pull # Updates local repo with changes in remote repo
$ git checkout master # switch to master branch
$ git merge grande # integrate grande's changes to master
```
We're all learning here.

### Committed mistakes
---
In the event of a committed mistake that has persisted over several commits:
```
$ git reset <last good SHA> # For when you want your files to remain intact
$ git reset --hard <last good SHA> # For when you want the files reset as well
```
You can view the SHAs through `$ git log`. Anything beyond that exceeds my amateur expertise.
***Cheers!***
