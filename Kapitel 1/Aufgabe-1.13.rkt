;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Aufgabe-1.13) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Konvertiert die Uhrzeit aus Stunden, Minuten, Sekunden und Zehntelsekunden in in Beats
; 1 Tag = 864.000 Zehntelsekunden
; 1 Beat = 864 Zehntelsekunden (= 1 Minute 26 Sekunden 4 Zehntelsekunden)

(: time->beats (natural natural natural natural -> rational))

(check-expect (time->beats 0 0 0 0) 0)
(check-expect (time->beats 0 1 26 4) 1)
(check-expect (time->beats 23 58 33 6) 999)

(define time->beats
  (lambda (h m s d)
   (d->beats (+ (h->d h) (m->d m) (* 10 s) d))))

; Konvertiert Zehntelsekunden in Beats

(: d->beats (natural -> rational ))

(check-expect (d->beats 0) 0)
(check-expect (d->beats 864) 1)
(check-expect (d->beats 864000) 1000)

(define d->beats
  (lambda (d)
    (/ d 864)))

; Konvertiert Stunden in Millisekunden

(: h->d (natural -> natural))

(check-expect (h->d 1) 36000)
(check-expect (h->d 0) 0)

(define h->d
  (lambda (h)
    (* h 3600 10)))

; Konvertiert Minuten in Millisekunden

(: m->d (natural -> natural))

(check-expect (m->d 1) 600)
(check-expect (m->d 60) 36000)

(define m->d
  (lambda (m)
    (* m 600)))

