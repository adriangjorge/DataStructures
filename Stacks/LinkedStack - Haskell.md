# LinkedStack

```haskell
data LinkedStack a = Nil | Node a (LinkedStack a)
```

### show
```haskell
instance (Show a) => Show (LinkedStack a) where
  show s = "[" ++ showCustom s ++ "]"
    where
      showCustom (Node x s) = show x ++ " > " ++ showCustom s
      showCustom Nil = "/"
```

## isEmpty
```haskell
isEmpty :: LinkedStack a -> Bool
isEmpty Nil = True
isEmpty _ = False
```

## size
```haskell
size :: LinkedStack a -> Integer
size (Node _ t) = 1 + size t
size Nil = 0
```

## put
```haskell
put :: a -> LinkedStack a -> LinkedStack a
put x s = Node x s
```

## top
```haskell
top :: LinkedStack a -> a
top (Node x _) = x
top Nil = error "Empty stack"
```

## pop
```haskell
pop :: LinkedStack a -> LinkedStack a
pop (Node _ t) = t
pop Nil = Nil
```
