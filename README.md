# arcwatch
ArcWelder Watchdir Helper

Octoprint has a plugin for ArcWelder but Moonraker does not (yet.) this is a stop gap becuase I find it asier to hack a few things together.

Install ArcWelder, install inotify
Assign the locations of where you want things to go

Running it is currently in monitor mode as daemon cuts it off from being able to do the loop. It might get a service made in the future to hold open.
Or someone might just build this properly into a Moonraker call.
