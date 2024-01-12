
;; title: dev-token
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;

;; constants
;;

;; data vars
(define-data-var my-variable uint u0)
(var-set my-variable u2000)
(print (var-get my-variable))


;;

;; data maps
(define-map counters principal uint)
;;

;; public functions
(define-read-only (get-count (who principal)) 
  (default-to u0 (map-get? counters who))
)

(define-public (count-up)
  (ok (map-set counters tx-sender (+ (get-count tx-sender) u1)))
)
;;

;; read only functions
;;

;; private functions
;;

