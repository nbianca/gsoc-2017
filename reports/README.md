## Weeks 01-03 <sup>30th May - 18th June</sup>

* In this period I was still having exams. Most of my time was spent studying for exams and barely had any time for coding.
* I had a better look at the items I mentioned in my proposal, investigated how I could implement those and drafted a solution.

## Week 04 <sup>19th June - 25th June</sup>
- Worked on Canned Replies plugin. Sam told me the canned replies is an important plugin for Discourse and required a little revamp.
- I did some research on this plugin to see which aspects can be improved. I came up with a mock-up and posted [here](https://meta.discourse.org/t/canned-replies-plugin-update/64904/), on Meta.
- The current plugin did not have a very user friendly interface. Sam suggested that it would be ideal to have details about canned replies in the preview pane. This required me to change a part of the core to add plugin outlets in editor's preview pane.
- I got a few suggestions about the mock-up and by the end of the week, I had a good design in mind. Please, see [this](https://meta.discourse.org/t/canned-replies-plugin-update/64904/).
- I also did some research on some of the things I originally proposed in my [GSoC proposal](https://docs.google.com/document/d/1m-8zFaDZtoCtZWMldhzUzSVHru3_D8j0o7hFSY_jHOY/).

### Challenges
- I believe this week was quite straight-forward. There was nothing of a big complexity here. :smirk:

## Week 05 <sup>26th June - 2nd July</sup>
- Actually implemented the changes I proposed in the past week. Changes got merged, bugs were reported. I fixed those and pushed the changes.
- Started working on another thing that was wanted by some users: adding variables inside canned replies. Basically `@user`, `@op`, etc. would get replaced with the actual username of current user or the username of the original poster, etc. I still have issues with this. Sometimes (after navigating to another page without refresh), the information I need is not present.

### Challenges
- Most of the work I did on Discourse :discourse: until now was mostly bug fixes. Now, I had to implement something new was a little bit more difficult to me. :sweat:

## Week 06 <sup>3rd July - 9nd July</sup>
- Worked on the MP4-to-GIF plugin I wrote about in my proposal. I got to a working prototype: any GIF that was uploaded would trigger a file upload event that would use `convert` (which is a component of ImageMagick) to convert the new GIF file to MP4. This approach only works for those GIFs that were uploaded, but I consider it a success.
- Started working on a Travis configuration for Discourse plugins. There were a few difficulties, but nothing major. This should prevent merging faulty commits.
- This week was quite slow. I had some trouble with my laptop. My old hard-drive failed and lost a big part of the work I did for this week. Good thing is that I still remembered what I had to do and how to, bad thing is that I had to setup my environment on a borrowed laptop and on mine, after I fixed it. I did reimplement bug fixes to the bugs that were reported on meta and tested everything again to make sure no bug got through.

### Challenges
- “If anything can go wrong, it will.” :sadpanda:

## Week 07 <sup>10th July - 16th July</sup>
- I fixed the JavaScript integration tests that I completely I missed. It took me a while to get accustomed to the QUnit testing framework. I think that even the old tests were broken.
- I investigated the of use canned replies using keyboard shortcuts. I really thought this would be a lot easier, but proved to be extremely complicated. I simply could not get the "keyPress" event on any of my components. In the end, I added the event handler to the composer-editor component, but this is not a good fix. Even though, it kind of works, I will be looking into a better solution.
- Sam came up with the idea to work on another feature that would let users send private messages to emails. He recommended me to look into staged user. I did not actually use the staged users before so I started looking through the code to make a better idea about the mechanism behind.
- Fixed a bug with latest topics listing. One topic (the last one from the first page) was duplicated at the beginning of the second page. This required thorough testing (again) and tests to be written.

### Challenges
- The biggest challenge here was that I underestimated some stuff. As easy as it might have seemed at first, it was not. Moments like these make you appreciate the hassle of software development methodologies. :crazy_face:

## Week 08 <sup>17th July - 23th July</sup>
- The quick access menu I implemented before GSoC was broken. It broke mainly due to the fact that there was some refactoring and the feature was not merged than because of a bug. Fixing it required some refactoring.
- I struggled for like two days to get a good development box where I could have used the mail server. I tried using my own computer and forwarding those ports I needed, but failed. I think my ISP is blocking my connection. I asked a friend of mine to lend me one of his Digital Ocean boxes where I could get everything working.
- I believe that I have a some idea on how the “pm to email” users should work. Basically, it is more of a “pm to a staged user”. In case a staged user does not exist yet, it will be created when the PM is sent. More on this, soon.

### Challenges
- DevOps is harder than it looks like (configuring server). :angry::anger:

## Week 09 <sup>24th July - 30th July</sup>

* This week I focused on the PM to email functionality. The expected behavior was to be able to send private messages to email addresses. Currently, private messages can be sent only to users. To send a private message to an email address, a staged user (which can be considered some sort of temporary user) is created and used for correspondence.

### Challenges
- Understanding the existent code for private messages.
- Properly testing was difficult, as I mentioned in the report for the previous week.

## Week 10 <sup>31st July - 6th August</sup>

* This was a slow week. I have been to London and I spent most of the week packing, traveling and unpacking.
* I fixed some quirks of the send PM to emails and did more testing.

## Week 11 <sup>7th August - 13th August</sup>

* Sam, my mentor, was out on holiday. He instructed me to take a look at the #pr-welcome tasks on Meta.
* One of the issues I solved was to track scroll on the search page. Actually, my solution to this problem could be used to track the scrolling on any page. What I did was to implement a component that stores the new position of the scroll on each update. [PR](https://github.com/discourse/discourse/pull/5040)
* Another issue I worked and was long due, was the remaining like after a change of ownership. Let's say there are two users: A and B. A likes B's posts and then B's post ownership is changed to A. Now A has a post liked by A, which should not be possible. [PR](https://github.com/discourse/discourse/pull/5038)
* There was one more issue that did was not a real problem, but I'm glad that I fixed: removing Spork dependency. Spork is a server for testing frameworks that should speed up test running. I think most of Discourse developers do not use it anymore and Sam wanted it removed, so I did that in this [PR](https://github.com/discourse/discourse/pull/5035).
* I actually looked into a few more issues, but I did not know how to start on some of these and others were actually a too difficult problem to solve that did not really justify the effort (see the merge users functionality requested [here](https://meta.discourse.org/t/ability-to-merge-users/9220)).

### Challenges
- For me, it is quite difficult to pick up tasks. I tried to help as many users and sometimes, it is not very clear how desired a feature is or what it takes for that feature to be implemented.

## Week 12 <sup>14th August - 20th August</sup>

* I helped merging a long due pull request that was submitted by @gsambrotta.
* I did some more changes to get my pull requests into a mergeable state.
* I banged my head against the wall to solve the remaining issues with the pull requests I sent. Writing the right tests is hard and I had to make some changes to one pull request that actually changed the expected behavior and had to rewrite the tests.

### Challenges
- I started hating writing tests. On my machine, it takes a while to run all unit tests and for some of my changes I needed to reseed the database everytime, which was a pain.

