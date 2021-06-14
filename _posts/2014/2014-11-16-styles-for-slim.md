---
layout: post
title: Styles for slim
date: 2014-11-16
tag: "intro"
---

slim.bliss_work is a simple and beautiful jekyll theme, it has only the essential functions
so that you can concentrate on the content of your blog.

Now, let's have a glance at the basic styles, you can view how to write these in `./_posts/2014-11-16-styles-for-slim.md` file. You can insert a [link](http://github.com/syaning/vida), bold text, **strong**; italicize text, *italic*; slash text: <del>deletion</del>; and underline text, <ins>insertion</ins>.

Below is a horizontal line...

<hr>

Headers are given below too!

# Header 1

## Header 2

### Header 3

#### Header 4

##### Header 5

###### Header 6

You can also list items as well either bulleted or numerical...

Bulleted...

- list item 1
  * level down
    * another indent
- list item 2
- list item 3

Numerical...

1. list item 1
2. list item 2
3. list item 3

Block quotes are viewed as below!

> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

---

You can also insert pictures as well...

![zen]({{site.baseurl}}/{{ site.other_files_link }}zen_colored.png)

Tables are given below...

|Header1 |Header2  | Header3|
|:---: | :---: | :---:|
|Align left| Align right|center text|
|cell data1|cell data2|cell data3|

...coding too if you need to.

```javascript
// index.js
var arr = [1, 2, 3, 4, 5];
var b = arr.map(x => x * x);
console.log(b);
```
---

### MathJax support

Lastly, the site comes with mathjax support: you have a variety of tools to use from the color package, physics package, si units package, and a statistics package. Documentation for all of them is given as posts! Examples...

$a + b = c$ and $a = b + c$ means...

$$
a + b = a - b \impl b = -b
$$

Old theorem with geometrical significance...

$$
a^2 + b^2 = c^2
$$

and another one...

$$
2^a + 2^b = 2^c
$$

$a^b + c^a = b^c$ as well. Let's color the exponents: $a^{\red{b}} + c^{\blue{a}} = b^{\green{c}}$

Adding some statistics: $\sample{X}{10}$ and

$$
\P{X = x} = \poisd{x}{\lambda}
$$

Feel free to be creative!
