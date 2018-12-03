(include "gilded-rose.scm")

(display "OMGHAI!")
(newline)
(let ((items (list (make-item "+5 Dexterity Vest" 10 20)
                   (make-item "Aged Brie" 2 0)
                   (make-item "Elixir of the Mongoose" 5 7)
                   (make-item "Sulfuras, Hand of Ragnaros" 0 80)
                   (make-item "Sulfuras, Hand of Ragnaros" -1 80)
                   (make-item "Backstage passes to a TAFKAL80ETC concert" 15 20)
                   (make-item "Backstage passes to a TAFKAL80ETC concert" 10 49)
                   (make-item "Backstage passes to a TAFKAL80ETC concert" 5 49)
                   ;; this conjured item does not work properly yet
                   (make-item "Conjured Mana Cake" 3 6)))
      (days  2))

    (define (x day)
        (cond ((<= day days)
               (display "-------- day ~a --------~%" i)
               (newline)
               (display "name, sell-in, quality")
               (newline)
               (for-each (lambda (item)
                             (display (item-to-string item))
                             (newline))
                         items)
               (update-quality items)
               (x (- day 1)))))
    (x 0))
