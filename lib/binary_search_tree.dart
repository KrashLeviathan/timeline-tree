library binary_search_tree;

/// A binary search tree data structure.
class BinarySearchTree<E extends Comparable> {
  static BSTNode root;

  /// Find a node the tree with value n. Its O(lgn)
  bool find(Comparable id){
    BSTNode current = root;
    while(current!=null){
      if(current.data.compareTo(id) == 0){
        return true;
      }else if(current.data.compareTo(id) > 0){
        current = current.left;
      }else{
        current = current.right;
      }
    }
    return false;
  }

  /// Delete a node the tree with value n. Its O(lgn)
  bool delete(Comparable id){
    BSTNode parent = root;
    BSTNode current = root;
    bool isLeftChild = false;
    while(current.data.compareTo(id) != 0){
      parent = current;
      if(current.data.compareTo(id) > 0){
        isLeftChild = true;
        current = current.left;
      }else{
        isLeftChild = false;
        current = current.right;
      }
      if(current ==null){
        return false;
      }
    }
    //if i am here that means we have found the node
    //Case 1: if node to be deleted has no children
    if(current.left==null && current.right==null){
      if(current==root){
        root = null;
      }
      if(isLeftChild ==true){
        parent.left = null;
      }else{
        parent.right = null;
      }
    }
    //Case 2 : if node to be deleted has only one child
    else if(current.right==null){
      if(current==root){
        root = current.left;
      }else if(isLeftChild){
        parent.left = current.left;
      }else{
        parent.right = current.left;
      }
    }
    else if(current.left==null){
      if(current==root){
        root = current.right;
      }else if(isLeftChild){
        parent.left = current.right;
      }else{
        parent.right = current.right;
      }
    }else if(current.left!=null && current.right!=null){

      //now we have found the minimum element in the right sub tree
      BSTNode successor	 = getSuccessor(current);
      if(current==root){
        root = successor;
      }else if(isLeftChild){
        parent.left = successor;
      }else{
        parent.right = successor;
      }
      successor.left = current.left;
    }
    return true;
  }

  /// Gets the successor to the given node.
  BSTNode getSuccessor(BSTNode deleleBSTNode){
    BSTNode successor;
    BSTNode successorParent;
    BSTNode current = deleleBSTNode.right;
    while(current!=null){
      successorParent = successor;
      successor = current;
      current = current.left;
    }
    //check if successor has the right child, it cannot have left child for sure
    // if it does have the right child, add it to the left of successorParent.
    // successsorParent
    if(successor!=deleleBSTNode.right){
      successorParent.left = successor.right;
      successor.right = deleleBSTNode.right;
    }
    return successor;
  }

  /// Add a node the tree with value n. Its O(lgn)
  void insert(Comparable id){
    BSTNode newBSTNode = new BSTNode(id);
    if(root==null){
      root = newBSTNode;
      return;
    }
    BSTNode current = root;
    BSTNode parent = null;
    while(true){
      parent = current;
      if(current.data.compareTo(id) > 0){
        current = current.left;
        if(current==null){
          parent.left = newBSTNode;
          return;
        }
      }else{
        current = current.right;
        if(current==null){
          parent.right = newBSTNode;
          return;
        }
      }
    }
  }

  /// Prints the entire tree in increas­ing order. O(n).
  void display(BSTNode root){
    if(root!=null){
      display(root.left);
      print(root.data);
      display(root.right);
    }
  }
}

/// A node for the [BinarySearchTree] class.
class BSTNode<E extends Comparable>{
  Comparable data;
  BSTNode left;
  BSTNode right;
  BSTNode(this.data){
    left = null;
    right = null;
  }
}
