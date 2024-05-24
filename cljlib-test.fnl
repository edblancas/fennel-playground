(import-macros cljm (doto :cljlib require))
(local clj (require :cljlib))

(cljm.defn test-fn [x y]
  (print (+ x y)))

(test-fn 1 2)

(cljm.def local-var 3)

(test-fn 1 local-var)
