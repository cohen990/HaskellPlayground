import Control.Parallel

main = a `pseq` print (a)
    where
        a = ack 3 10

ack 0 n = n + 1
ack m 0 = ack (m-1) 1
ack m n = ack (m-1) (ack m (n-1))
