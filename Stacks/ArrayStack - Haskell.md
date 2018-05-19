# ArrayStack

```haskell
type ArrayStack a = [a]
```

### isEmpty
```haskell
isEmpty :: ArrayStack a -> Bool
isEmpty [] = True
isEmpty _ = False
```

### size
```haskell
size :: ArrayStack a -> Integer
size = toInteger.length
```

### put
```haskell
put :: a -> ArrayStack a -> ArrayStack a
put x xs = x:xs
```

### top
```haskell
top :: ArrayStack a -> a
top (x:xs) = x
top [] = error "Empty stack"
```

### pop
It removes the top element from the collection.
```haskell
pop :: ArrayStack a -> ArrayStack a
pop (x:xs) = xs
pop [] = []
```
