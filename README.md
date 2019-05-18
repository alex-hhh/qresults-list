# qresults-list - enhanced list-box% control

[![Build Status](https://dev.azure.com/alexharsanyi0641/racket-packages/_apis/build/status/alex-hhh.qresults-list?branchName=master)](https://dev.azure.com/alexharsanyi0641/racket-packages/_build/latest?definitionId=6&branchName=master)

This package provides the `qresults-list%` class which improves the build-in
Racket `list-box%` control:

* data-oriented interface for adding data to the list-box% control
* efficient changing of large amounts of data in the control
* columns can be sorted by clicking on the headers
* columns are initially sized to fill the entire available client area in
  the control
* remembers the column layout: columns can be resized and re-ordered by the
  user and the layout can be saved to a preferences file and restored from
  there
* the user can select at runtime which columns should be visible, and the
  column visibility is independent from the data that is provided to the
  control (i.e the application can provide data for many possible columns and
  the user can choose which ones to be visible in the control)

This control is used in the
[ActivityLog2](https://github.com/alex-hhh/ActivityLog2) application, see that
application for usage examples.

