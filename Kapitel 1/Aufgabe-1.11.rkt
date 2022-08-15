;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Aufgabe-1.11) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Die Temperatur von Grad Celsius in Grad Fahrenheit umrechnen

(: celsius->fahrenheit (rational -> rational))

(check-expect (celsius->fahrenheit 0) 32)
(check-expect (celsius->fahrenheit 5) 41)
(check-expect (celsius->fahrenheit 10) 50)
(check-expect (celsius->fahrenheit -10) 14)

(define celsius->fahrenheit
  (lambda (C)
    (+ (* (/ 9 5) C) 32)))

; Die Temperatur von Grad Fahrenheit in Grad Celsius umrechnen, C = (F - 32) * 5/9

(: fahrenheit->celsius (rational -> rational))

(check-expect (fahrenheit->celsius 32) 0)
(check-expect (fahrenheit->celsius 41) 5)
(check-expect (fahrenheit->celsius 50) 10)

(define fahrenheit->celsius
  (lambda (F)
    (* (/ 5 9) (- F 32))))
