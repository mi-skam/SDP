;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Aufgabe-1.8) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
(define s1 (square 40 "solid" "red"))
(define c1 (circle 40 "solid" "green"))
(define p1 (star-polygon 20 10 3 "solid" "blue"))

#|
Eine Abstraktion hat folgende Form:
(lambda (p1 . . . pn) e)
Die pi sind jeweils Namen, die Parameter, und e ist der Rumpf . In e dürfen die pi vorkommen.
Der Wert einer Abstraktion ist eine Funktion, welche für jeden Parameter eine Eingabe erwartet.
Eine Applikation einer Funktion hat folgende Form:
(f a1 . . . an)
f ist ein Ausdruck, der eine Funktion ergeben muss, die ai sind ebenfalls Ausdrücke, die Argumente. Bei der Auswertung einer Applikation werden zunächst f und die ai ausgewertet; danach
geht es mit der Auswertung des Rumpfes der Funktion weiter, wobei für die Parameter pi
jeweils
die Werte der Argumente ai eingesetzt werden.
|#


; This code will be abstracted to tile
#|(above
 (beside s1 p1)
 (beside p1 s1))

(above
 (beside p1 c1)
 (beside c1 p1))
|#

; definiton of tile
(define tile
  (lambda (a b)
    (above
     (beside a b)
     (beside b a))))

(tile s1 p1)
(tile p1 c1)

