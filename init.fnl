(print _G)
(print "----")

(each [k v (pairs _G)]
  (print k "is" v))
(print "----")

;; _G is a special table of all globals.
(print (. _G "_G"))
(print "----")

(print (= (. _G "_G") _G))  ;; -- Prints 'true'.
(print "----")

(each [k v (pairs (. _G "_G"))]
  (print k "is" v))
(print "----")

;; is the same table as _G, like a recursive table pointed XD
;; see the memory location in the prints
;; (. _G "_G")

;; https://fennel-lang.org/reference#global-set-global-variable
;; (global prettyprint (fn [x] (print (fennel.view x))))
;; is deprecated in 1.1.0
;; Using global adds the identifier in question to the list of allowed globals 
;;   so that referring to it later on will not cause a compiler error. However,
;;   globals are also available in the _G table, and accessing them that way 
;;   instead is recommended for clarity.

;; SO TO SET A GLOBAL WE USE:
(tset _G "my-global-var" "my-global-var")
(print (. _G "my-global-var"))
(print "----")

(each [k v (pairs _G)]
  (print k "is" v))
(print "----")
