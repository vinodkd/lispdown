define (make-from-real-imag x y)
  define (dispatch op)
    cond
      case (eq? op 'real-part) : x
      case (eq? op 'imag-part) : y
      case (eq? op 'magnitude) :
       (sqrt (+ (square x) (square y)))
      case (eq? op 'angle) (atan y x)
      else 
       (error "unknown op" op)
      end
    end
  end
  cond
      case (> a 1): blah
      case (< a 1) : bleh
      else (error "blew") end
  end
  dispatch
end