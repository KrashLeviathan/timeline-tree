# Timeline Tree

A dart library for a "timeline tree" data structure, which combines
arrays and binary search trees to de-emphasize the importance and
accessibility of information as it gets older.

- - -

A "timeline tree" is an ordered timeline that condenses older elements as
newer ones get added. Also allows for marking milestones in the timeline.
The deeper an element is in the tree, the less important it is. The tree
is a mix of arrays and binary search trees. Depth of the tree could be
visualized as such:

```
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
- - - - - - - - - - - - - - - - - - - - - - - - - - - -
- - - - - - - - - - - - - - - - - - - - - -
- - - - - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - -
- - - - - - - - - -
- - - - - - - -
- - - - - - -
- - - - - -
- - - - - -
- - - - -
- - - - -
- - - -
- - - -
- - - -
... etc
```

The right side of the tree are the newer events, and the left side of the
tree are the older events. The top layer are the most important events:
A combination of new events, events marked as milestones, and grouped
events.

## Usage

A simple usage example:

    import 'package:revision_tree/revision_tree.dart';

    main() {
      var awesome = new Awesome(); // TODO: Make a usage example!
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
