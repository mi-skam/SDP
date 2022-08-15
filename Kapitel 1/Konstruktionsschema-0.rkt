;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Konstruktionsschema-0) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; 1. Schritt: Kurzbeschreibung
; Schreibe für die Funktion zunächst einen Kommentar, der ihren Zweck kurz beschreibt. Ein
; Satz, der auf eine Zeile passen sollte, reicht.

; monatlichen Rechnungsbetrag für Tarif Billig-Strom berechnen


; 2. Schritt: Datenanalyse
; TODO

; 3. Schritt: Funktionssignatur zwischen Kurzbeschreibung und Funktion
; Schreibe für die Funktion direkt unter die Kurzbeschreibung eine Signatur-Deklaration. Dazu denke Dir zunächst einen möglichst aussagekräftigen Namen aus. Überlege dann, welche
; Sorten die Ein- und Ausgaben haben und schreibe dann eine Signatur, welche die Ein- und
; Ausgaben der Funktion möglichst präzise beschreiben.

; (: billig-strom (natural -> rational))


; 4. Schritt: Tests

; Schreibe unter die Signatur Tests für die Funktion. Denke Dir dafür möglichst einfache, aber
; auch möglichst interessante Beispiele für Aufrufe der Funktion aus und lege fest, was dabei
; herauskommen soll. Mache aus den Beispielen Tests mit check-expect.

; Achte darauf, dass die Tests dafür sorgen, dass der Code Deiner Funktion durch die Tests
; vollständig abgedeckt wird.

; (check-expect (billig-strom 0) 4.9)
; (check-expect (billig-strom 10) 6.8)
; (check-expect (billig-strom 20) 8.7)
; (check-expect (billig-strom 30) 10.6)


; 5. Schritt: Das Gerüst - einen Funktionsnamen und die nötigen Argumente überlegen

; Schreibe unter die Tests ein Gerüst für die Funktion. Dazu übernimmst Du den Namen aus
; der Signatur-Deklaration in eine Funktionsdefinition wie zum Beispiel:

;(define billig-strom
;  (lambda (...)
;    ...))

; Denke Dir Namen für die Eingaben der Funktion aus. Das müssen genauso viele sein, wie die
; Signatur Eingaben hat. Schreibe dann diese Namen als Eingaben in die lambda-Abstraktion.

;(define billig-strom
;  (lambda (kWh)
;    ...))


; 6. Schritt: Schablonen
; TODO

; 7. Schritt: Rumpf
; Als letzten Schritt fülle mit Hilfe des Wissens über das Problem den Rumpf der Funktion aus.


;;;; jetzt kommt das Beispiel am Stück ;;;;;

; monatlichen Rechnungsbetrag für Tarif Billig-Strom berechnen

(: billig-strom (natural -> rational))

(check-expect (billig-strom 10) 6.8)
(check-expect (billig-strom 20) 8.7)

(define billig-strom
  (lambda (kWh)
    (+ 4.9 (* 0.19 kWh))))



