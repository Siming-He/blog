# Homework 2: Building a Blog in Rails

Regular credit is due **11:59PM, Friday, March 6th**.
Extra credit is due on **the last day of class**.

## 1. Introduction

One of the contributors to Rails' explosive growth was a talk given by the creator, David Heinemeier Hansson, who shows [how to create a blog in less than 15 minutes](https://www.youtube.com/watch?v=Gzj723LkRJY) (viewing is optional). This was completely novel at the time, and shows how powerful Rails is and how quickly you can get an application up and running.

With just the few lectures we have had together, we will build a blog of our own from scratch -- going from the starting a new rails project all the way to having your blog deployed to the world wide web!

## 2. Overview of Tasks

The required tasks can be broken down into **4 parts**

1. **Homepage:** A personal blog is *first*, a personal website. Your first task is to use rails to create a home page for your blog. 
    * This page should contain your personal profile: ([eg1](https://www.cis.upenn.edu/~ahae/), [eg2](https://www.cis.upenn.edu/~nenkova/), [eg3](https://www.cis.upenn.edu/~stevez/)...).
    * This page should also contain a link to the page that contain all your blog posts. 

1. **Implementing CRUD and RESTful Routes:** Blogs are the simplest type of CRUD applications where the model is a `post`. Your second task is to implement the routes, controller methods, and views for creating, reading, updating, and deleting blog posts. 
    * Recall that these routes and functionalities are defined by the 7 RESTful routes, so your job is toto implement these RESTful routes. 
    * When you are done with the functionalities, make sure you add links between pages to make your blog a coherent application interface. 
    * At the end of this part, your application should look like this: https://cis196-hw2-linked.herokuapp.com/

1. **Styling Your Blog:** You should aim to make your personal blog and homepage beautiful and reflective of your personality and taste. 
    * Using [BootStrap](https://getbootstrap.com/) or any other CSS libraries, you can styling by tweaking your HTML and CSS. 
    * Here is a good example of a good-looking personal blog: http://www.adhamdannaway.com/.
    *  Yours need not to be this flashy, but you should at least build out something like this: https://cis196-hw2-styled.herokuapp.com/

4. **Deploy:** You are expected to deploy your blog to the open web. We suggest using [heroku](https://www.heroku.com/).

> **Please start early**
Some parts of this project (RESTful routes, Deployment...) can be very time intensive to debug. 
Note that in we are not providing any starter code (except `_form.html.erb`) for this assignment. 
You will build everything using Rails from the ground up!

## 3. The Tutorial
This homework is more like a "tutorial" than a "homework". The objective of this homework is to get you up and running with as much essential Rails features as possible. Therefore, we are providing a step-by-step tutorial of this homework to make you a confident Rails developer in the shortest time possible. 

## 4. Testing and Grading
We are not providing unit tests along with this writeup. In past years, students have abused rspec to the point that they no longer look at the actual behavior of their programs. Therefore, we want you to test the features on your own.

In order to check the behavior of your `post` model, use `rails c` to pull up an interactive ruby shell. There, you can try to instantiate post instances, and call active-record methods to interact with the database.

In order to debug routes, controller methods, and views, use the pry gem to set breakpoints in your controller code, and pull up `rails s` and click around in the browser to see if the behaviors are expected.

We will only release some subset of unit tests around the deadline of the project. There is a rough guideline of how we will be grading your homework.


## 5. Extra Credits
There are a lot more we can do to our blog. For example, currently, everyone can edit your blog, which is *obviously* not ideal. We have identified three camps of extra-credit features that you can try out.

Th first camp are those you can already implement: 
1. **Multiple Pages (E):** Instead of just having the home page, add other static pages like "projects" or "hobbies", or ... to have more content on your website.

The second camp are those features that we will cover in future classes:
1. **Form Validation (E):** Add backend checks to ensure that the title and body of each post must be present. The title must be unique, and the body of the post should have at least 5 words.
2. **More Fields for Posts (M):** Add Read/Like/Dislike Counts for posts. You must also implement views and controller methods to enable this feature.
3. **More Fields for Posts 2 (M):** Add Categories to Posts, and write view and controller methods to list posts on `index` page with category filtering.
4. **Nested Resources (M):** add a `User` model, so that `posts` belong to users, and implement routes, controller methods, and views for CRUD of the User model. This way, your blog will essentially become a "multi-user" blog.
5. **User authentication (M):** On top of the above, provide user authentication, so that only users can *only* CUD their own posts (Read is allowed). 
6. **Model Association (H):** add a `Comment` model, so that in addition to posts, you / and other viewers can create `comments` for a specific posts (each post `has_many` comments). This step is a little tricky in that you need to create non-trivial forms/views to enable this feature.
7. **Separating User Privileges (H):** On top of all of the above, implement the idea of an "Admin", so that other `users` can only create comments, but not posts. Only the `user` with `admin?==true` can create post.

The third camp are those features that you need to explore on your own. Note that there are a lot of third-party gems that can help you achieve your goal:
1. **Rich Text Editing (H):** Posts with pure text are boring. Incorporate a third-party gem that will allow you to create/edit posts with style: bold, italic, titles...
* ( SUBMIT YOUR OWN IDEA HERE )

Each "Easy" (E) is worth 3% more points. 
Each "Medium" (M) is worth 6% more points. 
Each "Hard" (M) is worth 10% more points.

## 6. Submission

1. Commit your changes and push your changes to Gitlab.
2. Make a zip for this folder, and upload it on Canvas.
3. In your canvas submission, make sure you put the **link** of your deployed blog in submission comment.
4. If you implemented extra credits, submit a separate zip folder to the "HW2 - Extra Credit" Assignment. In the comment, please specify which extra credit features you implemented.