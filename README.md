# bliss_work.slim

The idea of this blog is to expose one's professional abilities, what they are currently working on, and their future aspirations. Nothing fancy, easy to skim and get the main idea of.

Help get one employed and show others their new projects. It is built off of the source code from [slim](https://github.com/syaning/slim). Check some of his stuff out!

## Making the site your own

> **The idea:** A site for your vocational endeavors. Post your resume, cv, talks, academic works, projects, and a little bit about your professional self all in one website!

A basic site using plain colors to keep the focus on what you've done professionally and how you might be changing directions in life. All using a blissful approach. Nothing fancy.

> Please edit the `_config.yml` to have your custom settings. In particular, you'll need to edit: `title`, `url`, `baseurl`, `author`, and `mathjax` to your own preferences. Details are written as comments in the `_config.yml` file!

### Shell utility

The blog comes with a shell utility you can put inside your `.zshrc` and source. It can

* start talks and associated tag pages
* start projects
* upload works and other things...

To use it you need to first type

```
bliss
```

to invoke the command, instructions for specific uses are given in the sections below.

---

### Changing the links that appear on the site...

You can also edit the links in the `homepage` and the `works` page too! Go to the respective file in the `_data` folder. The links on the top of the page are in `prof_links.yml` and the links for the works you might have are in the `works_links.yml` file. If you don't want any of them to appear on the site, just change the `show: true` to `false` for the link you want.

For example, if you don't want the cv to appear as a link the `works_links.yml` file will look like

```
- title: 'CV'
  url: '/cv/'
  show: false
```

## Your Phrases

The site comes with phrases to make your work more blissful. Create words and sentences that excite you for your *dream job* or *something you really enjoy!* All the phrases can be created and found in the `_config.yml` file. They are

* `bliss_phrase`
* `project_desc`
* `works_description`
* `work_summary`

Explaining each, the `bliss_phrase` is something related to your vocation. It is about you goal or aim about the things you wish to do professionally. For example, if you were to be a mathematician working in manufacturing boxes of orange juice (layout, design, optimization), you could write:

```
bliss_phrase: >

  Optimizing even the littlest things...
```

It's something to help give your blog a good mood or atmosphere. Next is the `work_description` which is just a section explaining or briefing the reader about your works, what they are, and how you might have used the ideas. An example writing for it could be:

```
work_description: >

  Mathematical works and cool papers, used often to compress large data into small packets...
```

In the `project_desc` a basic description of what your projects are about and a smooth introduction to guide the reader into exploring more about them. An example project description could be

```
project_desc: >

  Nice projects about optimization, constraints, and packaging solutions. New ideas for the times ahead!
```

Lastly, the `talks_summary` is an introduction or a summary about what most of your talks are about.  An example could be...

```
talks_summary: >

  Recent talks, meetings, and things trying out...
```

## About you

This section is about you, professionally. You can read the `index.md` and find out more about what things to put there!

---

## Talks (posts)

This is your talks section. It's a place for your recent ideas and just short notes. Maybe what's going on recently and other things like insights from meetings and the cool new things you've learned on a *month to month* basis. The idea is to keep learning during the vocation and hone your skills to be versatile for times ahead. Be flexible and adapt well to change and okay with new opportunities. Embrace your new talents gained as time goes and escape routine mentality.

### Keys (tags)

Each talk has 1 tag (called 'keys' on the site) that is like a category. It organizes your talks. You can have 'os_development', 'cool_ideas', 'learning_from_mistakes', 'nice_improvement', just keep them positive and show others your talents.

If you want to use the bliss shell utility to make a talk, the options are as follows

```
bliss talk new_file_name "talk title" "tag"
```

You need to input `talk` at least to generate a file, the other parts respectively: name the file as in `2021-11-06-new_file_name.md`, give the talk a title in the `.yml` and a tag (no spaces) too in the `.yml`.

---

## Resume

This section contains some advice about how to write a resume.

> You can delete the advice and write a markdown version of it right on the index.

You can also upload your resume using the bliss shell utility, just make sure the link for it is set correctly at the bottom:

```
<div style="text-align:right">
<a href="{{ site.baseurl }}{{ site.other_files_link }}resume.pdf">resume.pdf</a>
</div>
```

in the above for the `index.md` file in the `./resume/` folder, change the name `resume.pdf` to the name of your own resume.

## CV

Same as the resume, this section contains advice on how to write a nice cv.

> You can delete the advice and write a markdown version of it right on the index.

You can also upload your cv using the bliss shell utility, just make sure the link for it is set correctly at the bottom:

```
<div style="text-align:right">
<a href="{{ site.baseurl }}{{ site.other_files_link }}cv.png">cv.png</a>
</div>
```

in the above for the `index.md` file in the `./cv/` folder, change the name `cv.png` to the name of your own cv as well as the right extension.

## Projects

In this section, you write about the projects you've done. Either independently or with others. As always, credit others if they contributed and add *keywords* for the reader as well as the date. The shell utility has this feature for you.

If you want to use the bliss shell utility to create a project, the options are...

```
bliss project project_file_name "project title"
```

where you need to write `project` for the file to generate. The other options (which you don't need to input unless you want a custom filename and title) are the `project_file_name` and `project title` wrapped in double quotes.

## Works

This section has your works: papers and other things. It is for major breakthroughs you'd like to share and can help others see your strengths. You can upload them using the shell utility. The folders given to put your works are within `./professional_files`: `articles`, `books`, `extras`, and `papers`. The shell command works as follows...

```
bliss upload folder_name file_name
```

where you have to write `upload`, the `folder_name`, and `file_name` for you file to upload. There's feedback in case the folders or files aren't entered correctly.

## Uploading files/images

If you want to upload files and images to `./professional_files` you can put them inside the `others` folder inside that directory. The basic command using the bliss shell utility is

```
bliss upload others file_name
```

where you have to include the file_name; there are checks and feedback in case an error occurred.

---

This is about everything you need for the site, enjoy your day and work in bliss!
