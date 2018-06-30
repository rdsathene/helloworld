; -*-scheme-*- Robert D. Skeels 1999 <rdsathene@sbcglobal.net>

(define (rot-13 char)
    (if (char-alphabetic? char)
      (if (char-ci>? #\n char)
        (integer->char (+ (char->integer char) 13))
        (integer->char (- (char->integer char) 13)))
      char))


(define input-string "Tnzovg Fpurzr 3.0")
(for-each (lambda (ch) (display (rot-13 ch))) (string->list input-string))

; (rot-13 #\Z)
; abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ !@#$%^&*()_+0123456789
; nopqrstuvwxyzabcdefghijklm NOPQRSTUVWXYZABCDEFGHIJKLM !@#$%^&*()_+0123456789
