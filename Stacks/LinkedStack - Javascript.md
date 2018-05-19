# LinkedStack

```javascript
class Node {
  constructor(value, next) {
    this.value = value;
    this.next = next;
  }
}
```

```javascript
class LinkedStack {
  constructor() {
    this.topNode = null;
  }

  ...

}
```

### isEmpty
```javascript
isEmpty() {
  return this.topNode == null;
}
```

### size
```javascript
size() {
  let size = 0;
  let currentNode = this.topNode;
  while(currentNode != null) {
    size++;
    currentNode = currentNode.next;
  }
  return size;
}
```

### put
```javascript
put(item) {
  this.topNode = new Node(item, this.topNode);
  return this;
}
```

### top
```javascript
top() {
  if(this.topNode == null) 
    throw new Error('Empty stack');
  return this.topNode.value;
}
```

### pop
It removes the top element from the collection.
```javascript
pop() {
  if(this.topNode != null) {
    this.topNode = this.topNode.next;
  }
  return this;
}
```
