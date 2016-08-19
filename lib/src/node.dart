abstract class Node<E extends Comparable> {
  Comparable element;

  Node();
  Node.withElement(this.element);

  int get classification;
  int get length;
  List<Node> get children;

  String toString();
  bool find(Comparable element);
}

class NAryNode<E extends Comparable> extends Node {
  List<Node> _children = new List();

  int get classification => 2;
  int get length => _children.length;
  List<Node> get children => _children;

  String toString() {
    List<String> strings = new List();
    _children.forEach((Node node) {
      strings.add(node.toString());
    });
    return "NAryNode[ $element, ${strings.join(", ")} ]";
  }

  bool find(Comparable element) {
    _children.forEach((Node node) {
      if (node.find(element)) {
        return true;
      }
    });
    return false;
  }
}

class BinaryNode<E extends Comparable> extends Node {
  Node<Comparable> left;
  Node<Comparable> right;

  int get classification => 1;
  int get length => left.length + right.length;
  List<Node> get children => [left, right];

  String toString() => "BinaryNode[ ${left.toString()}, $element, ${right.toString()} ]";

  bool find(Comparable element) => (left.find(element)) ? true : right.find(element);
}

class AtomicNode<E extends Comparable> extends Node {
  int get classification => 0;
  int get length => 1;
  List<Node> get children => null;

  String toString() => element;

  bool find(Comparable element) => element.compareTo(this.element) == 0;
}
