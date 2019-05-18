#lang scribble/manual
@require[@for-label[qresults-list
                    racket/gui/base
                    racket/base]]

@title{qresults-list}
@author{alexh}

@defmodule[qresults-list]

This package provides the qresults-list% class which improves the build-in
Racket @racket[list-box%] control:

@itemlist[

  @item{data-oriented interface for adding data to the list-box% control}

  @item{efficient changing of large amounts of data in the control}

  @item{columns can be sorted by clicking on the headers}

  @item{columns are initially sized to fill the entire available client area
        in the control}

  @item{remembers the column layout: columns can be resized and re-ordered by
        the user and the layout can be saved to a preferences file and
        restored from there}

  @item{the user can select at runtime which columns should be visible, and
        the column visibility is independent from the data that is provided to
        the control (i.e the application can provide data for many possible
        columns and the user can choose which ones to be visible in the
        control)}

]

This control is used in the
@hyperlink["https://github.com/alex-hhh/ActivityLog2"]{ActivityLog2}
application, see that application for usage examples.

