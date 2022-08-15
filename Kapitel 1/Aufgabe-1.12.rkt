;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Aufgabe-1.12) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Fügt die gleiche Zeichenkette an eine gegebene Zeichenkette

(: double-string (string -> string))

(check-expect (double-string "Hi") "HiHi")
(check-expect (double-string "") "")

(define double-string
  (lambda (zeichenkette)
    (string-append zeichenkette zeichenkette)))

; Vervierfacht eine gegebene Zeichenkette

(: quadruple-string (string -> string))

(check-expect (quadruple-string "Hi") "HiHiHiHi")
(check-expect (quadruple-string "") "")

(define quadruple-string
  (lambda (zeichenkette)
    (double-string (double-string zeichenkette))))

; Verachtfacht eine gegebene Zeichenkette

(: octuple-string (string -> string))

(check-expect (octuple-string "*") "********")
(check-expect (octuple-string "") "")

(define octuple-string
  (lambda (zeichenkette)
    (double-string (quadruple-string zeichenkette))))

; Versechzehnfacht eine gegeben Zeichenkette

(: sixteentuple-string (string -> string))

(check-expect (sixteentuple-string "*") "****************")
(check-expect (sixteentuple-string "") "")

(define sixteentuple-string
  (lambda (zeichenkette)
    (double-string (octuple-string zeichenkette))))