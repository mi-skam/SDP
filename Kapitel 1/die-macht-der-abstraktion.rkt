;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname die-macht-der-abstraktion) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; monatlichen Rechnungsbetrag für Stromtarif berechnen

(: stromtarif-rechnungsbetrag (rational rational natural -> rational))

(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 0) 4.9)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 10) 6.8)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 20) 8.7)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 30) 10.6)


(define stromtarif-rechnungsbetrag
  (lambda (grundgebühr pro-kWh kWh)
    (+ grundgebühr (* pro-kWh kWh))))

(define billig-strom
  (lambda (kWh)
    (stromtarif-rechnungsbetrag 4.9 0.19 kWh)))

(define watt-für-wenig
  (lambda (kWh)
    (stromtarif-rechnungsbetrag 8.2 0.16 kWh)))
