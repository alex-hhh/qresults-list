#lang racket/base

;; icon-resources.rkt -- hold all (most) icon bitmap objects used by the
;; application, avoids re-loading them in each module that needs them.
;;
;; This file is part of qresults-list -- enhanced list-box% control
;; Copyright (c) 2019 Alex Harsányi <AlexHarsanyi@gmail.com>
;;
;; This program is free software: you can redistribute it and/or modify it
;; under the terms of the GNU Lesser General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at your
;; option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
;; License for more details.
;;
;; You should have received a copy of the GNU Lesser General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(require racket/draw
         racket/runtime-path)

(define-runtime-path edit-icon-file "../../img/edit-64.png")
(define the-edit-icon #f)
(define (edit-icon)
  (unless the-edit-icon
    (set! the-edit-icon (read-bitmap edit-icon-file)))
  the-edit-icon)
(provide edit-icon)
