#lang racket/base
;; utilities.rkt -- various utilities
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

(require racket/contract
         racket/file)

(provide/contract
 (put-pref (-> symbol? any/c any/c))
 (get-pref (-> symbol? any/c any/c)))

;; Store VALUE under NAME in the preferences file
(define (put-pref name value)
  (put-preferences (list name)
                   (list value)
                   (lambda (p) (error 'lock-fail "Failed to get the pref file lock" p))))

;; Retrieve the value for NAME from the preferences file, or return the value
;; of FAIL-THUNK if it does not exist.
(define (get-pref name fail-thunk)
  (get-preference name fail-thunk 'timestamp))


