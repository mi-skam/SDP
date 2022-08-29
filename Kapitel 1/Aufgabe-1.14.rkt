;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname Aufgabe-1.14) (read-case-sensitive #f) (teachpacks ((lib "image2.rkt" "teachpack" "deinprogramm"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image2.rkt" "teachpack" "deinprogramm")))))
; Der Verbrauch auf 100km aus einer gegebenen Menge Benzin benzin-l in Litern und der damit zurückgelegten Reichweite reichweite-km in km
(: liters-per-hundred-kilometers ((natural natural) -> rational))

;(check-expect (liters-per-hundred-kilometers 0 0) 0)
(check-expect (liters-per-hundred-kilometers 10 100) 10)
(check-expect (liters-per-hundred-kilometers 100 10) 1000)

(define liters-per-hundred-kilometers
  (lambda (benzin-l reichweite-km)
    (* benzin-l (/ 100 reichweite-km)))