# Toy - Web

## String Segmentation

The goal of this assignment is to practice using existing, working code within a Ruby Web framework.

You'll begin by adding a working version of String Segmenter to this application. See [lib/README.md](./lib/README.md) for details.

The **Assignment Details** section below goes into more detail about what this application might look like when it's completed.

### Getting Started

#### Installation

First, fork this repository, if you haven't already.

Then clone your fork on to your local development machine:

```zsh
cd ~/Code
git clone url_for_your_copy_of_this_assignment
```

(Note: You'll need to replace `url_for_your_copy_of_this_assignment` with the actual SSH URL for your repository, which looks something like `git@github.com:sumeetjain/web-toy__some-assignment.git`.)

That will create a folder named for the assignment in **~/Code**, and it will download the files from the repository into that folder.

Next, `cd` into that newly created folder, and run the setup script:

```zsh
cd the-newly-created-folder
bin/setup
```

(Note: You'll need to replace `the-newly-created-folder` with the actual name of the folder for your assignment.)

You won't need to run the setup script for this assignment again.

If the setup script does not return any failures or errors, you're ready to work on the assignment. Open the project folder in your code editor, and begin.

### Assignment Details

When completed, the following procedure should work:

1. Go to http://localhost:9292/turtlebluecat
2. The webpage's body displays the words "turtle", "blue", and "cat" separated somehow.

It should work for other strings, too. Use any minimal sample dictionary, like you did when you worked on String Segmenter last week.

#### How To Begin

You might begin by writing acceptance tests for a few example scenarios. The tests will fail, of course, until you implement the needed controller action that gets them to pass.

If you'd rather implement the controller action and view first, that's fine too.

##### Additional Steps

When you have both the basic implementation above completed _and passing acceptance tests_, consider doing some of the following tasks:

- What would a sensible homepage for this website be? Build it.
- It's not ideal for the user to have to type the string to segment into the URL. Learn how to use HTML forms to improve the user experience.
- What happens if segmentation for a given string _fails_? For example, what if someone tries to segment a string containing words that aren't in your dictionary? Eventually we'll hook up a _real_ dictionary, but it is still a good idea to show the user a good error message when segmentation fails.
