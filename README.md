# README

A simple website to book flights. Completed as part of the curriculum at [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/flight-booker).

## Objectives

- Get more familiar with the advanced things forms can do.
  - Nested Attributes
  - Multiple Models affected from a single form.
- Get accquainted with seed files for populating data to work with.
- Learn about and use simple_form gem.
- Get experience with callback functions on models.
- Get overall more familiar with Rails basics through doing.

## Observations and Lessons Learned

- A lot more comfortable now just getting basic rails views and models and controllers set up. 
- Did not actually have any part of the project that needed callback functions, so did not get a chance to use them yet.
- Simple forms is neat once I wrapped my head around what it actually did.
- Most of my problems seem to stem from when I try to do something through rails that is already trying to do through its own methods.
  - I drove myself crazy trying to figure out how to pass the passenger ids with the fields and doing the looping myself when it turns out once you tell rails that this is a field, it takes care of the repeating it for each one and assigning the id automatically.
- Messed around with seed files and really liked the ability to automatically create mass amounts of data.
- Didn't use it here, but did figure out how to seed off of a csv file and can see that coming in handy for projects with really big datasets
-  I ended up separating my original datetime column into date and time columns for my flights model, because I was having trouble searching with only a portion of that data. I have since looked into and think I could now build it again with the DateTime column and querey correctly with just the date. Also now aware that Time includes the date as well and is preffered to DateTime. Things to carry into future projects.

## To Do Later

- As with all of these rails projects. Need to come back and style.
- Would be neat to add more realistic flight durations, but would require location data to make happen and not sure I want to put in that effort for something that doesn't matter so much.
- An estimated time of arrival for flights calculated from duration and start time.
- Disply of flight duration in hour and minutes instead of just minutes.
- Email actually being sent out, but I know that's an upcoming lesson like the html and css stuff.
