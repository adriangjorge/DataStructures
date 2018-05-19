module LinkedStack (
  
) where

data LinkedStack a = Nil | Node a (LinkedStack a)

instance (Show a) => Show (LinkedStack a) where
    show (Node x t) =  p x ++ show t
        where
            p a = "" ++ show x ++ " > "
    show Nil  = "/"

isEmpty :: LinkedStack a -> Bool
isEmpty Nil = True
isEmpty _ = False

size :: LinkedStack a -> Integer
size (Node _ t) = 1 + size t
size Nil = 0

put :: a -> LinkedStack a -> LinkedStack a
put x s = Node x s

top :: LinkedStack a -> a
top (Node x _) = x
top Nil = error "Empty stack"

pop :: LinkedStack a -> LinkedStack a
pop (Node _ t) = t
pop Nil = Nil

stack = Node 1 Nil
