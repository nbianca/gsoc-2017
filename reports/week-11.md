## Week 11 <sup>7th August - 13th August</sup>

* Sam, my mentor, was out on holiday. He instructed me to take a look at the #pr-welcome tasks on Meta.
* One of the issues I solved was to track scroll on the search page. Actually, my solution to this problem could be used to track the scrolling on any page. What I did was to implement a component that stores the new position of the scroll on each update. [PR](https://github.com/discourse/discourse/pull/5040)
* Another issue I worked and was long due, was the remaining like after a change of ownership. Let's say there are two users: A and B. A likes B's posts and then B's post ownership is changed to A. Now A has a post liked by A, which should not be possible. [PR](https://github.com/discourse/discourse/pull/5038)
* There was one more issue that did was not a real problem, but I'm glad that I fixed: removing Spork dependency. Spork is a server for testing frameworks that should speed up test running. I think most of Discourse developers do not use it anymore and Sam wanted it removed, so I did that in this [PR](https://github.com/discourse/discourse/pull/5035).
* I actually looked into a few more issues, but I did not know how to start on some of these and others were actually a too difficult problem to solve that did not really justify the effort (see the merge users functionality requested [here](https://meta.discourse.org/t/ability-to-merge-users/9220)).

### Challenges
- For me, it is quite difficult to pick up tasks. I tried to help as many users and sometimes, it is not very clear how desired a feature is or what it takes for that feature to be implemented.

