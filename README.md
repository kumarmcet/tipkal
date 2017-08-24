# tipkal
To use this App, please download from root folder kumarmcet\tipkal\ and import it to your desktop

# Pre-work - *Tipkal*

**Tipkal** is a tip calculator application for iOS.
Tip Calculator app for CodePath evaluation

Submitted by: **Kumar Shanmugam**

Time spent: **12** hours spent in total including the issues faced during the initial period. I had renamed the associated methods that were attached to text boxes and segment controls. It was keep on giving error whene i run the app. It took 2-3 hours to resolve that. Also spent sometime learning the framework on youtube and on degreed,com.

## User Stories

The following **required** functionality is complete:

* [Y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Y] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [Y] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [Y] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** [The interface is easy to use and navigate. At first, it was confusing to see so many buttons, options, Arrow buttons. But as time went on and as i spent more time, i was able to follow the different inspector screens, story board screens , preview screens etc.,  Outlets is a way to control and manage the behavior of the elements like getting their current value and modifyig it. I believe it will allow control more such features of the UI elements.I am still to explore more on that. Actions are the methods that are executed/triggered upon events happening on the UI elements. Like user pressing a button or changing a value, entering the field, exiting teh field , button press down/up etc., It seems there are rich set of native action events available to choose in XCode. For someone like me who is coming from VB and Oracle background, these are very rich set of UI desigining elements.

Upon checking how these are implemented, it seems these are all maintained as xmls. Each element, property, attributes etc., are maintained as xml elements.
].

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [Enter your answer here in a paragraph or two].


## License

    Copyright [2017] [Kumar shanmugam]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
