## Week 07 <sup>10th July - 16th July</sup>
- I fixed the JavaScript integration tests that I completely I missed. It took me a while to get accustomed to the QUnit testing framework. I think that even the old tests were broken.
- I investigated the of use canned replies using keyboard shortcuts. I really thought this would be a lot easier, but proved to be extremely complicated. I simply could not get the "keyPress" event on any of my components. In the end, I added the event handler to the composer-editor component, but this is not a good fix. Even though, it kind of works, I will be looking into a better solution.
- Sam came up with the idea to work on another feature that would let users send private messages to emails. He recommended me to look into staged user. I did not actually use the staged users before so I started looking through the code to make a better idea about the mechanism behind.
- Fixed a bug with latest topics listing. One topic (the last one from the first page) was duplicated at the beginning of the second page. This required thorough testing (again) and tests to be written.

### Challenges
- The biggest challenge here was that I underestimated some stuff. As easy as it might have seemed at first, it was not. Moments like these make you appreciate the hassle of software development methodologies. :crazy_face:

