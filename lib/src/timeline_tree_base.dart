// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'node.dart';

// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

/// An ordered timeline that condenses older timeline elements as newer ones
/// get added. Also allows for marking milestones in the timeline. The deeper
/// an element is in the tree, the less important it is. The tree is a mix
/// of arrays and binary search trees. Depth of the tree could be visualized
/// as such:
///
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/// - - - - - - - - - - - - - - - - - - - - - -
/// - - - - - - - - - - - - - - - - - -
/// - - - - - - - - - - - - - - -
/// - - - - - - - - - - - -
/// - - - - - - - - - -
/// - - - - - - - -
/// - - - - - - -
/// - - - - - -
/// - - - - - -
/// - - - - -
/// - - - - -
/// - - - -
/// - - - -
/// - - - -
/// ... etc
///
/// The right side of the tree are the newer events, and the left side of the
/// tree are the older events. The top layer are the most important events:
/// A combination of new events, events marked as milestones, and grouped
/// events.
class TimelineTree<E extends Comparable> {
  final int startingSize;
  int _scalableSize;
  int _milestones = 0;
  int get milestones => _milestones;

  Node<E> _root;

  TimelineTree(this.startingSize) {
    _scalableSize = startingSize;
  }

  /// Add an element to the head of the timeline
  bool add(E element) {
    // TODO
    return true;
  }

  /// Removes an element from the head of the timeline
  bool deleteLast() {
    // TODO
    return true;
  }

  bool delete(E element) {
    // TODO
    return true;
  }

  /// Marks an element as a milestone, upgrading its importance in the tree
  void markAsMilestone(E element) {
    // TODO
  }

  /// Unmarks an element as a milestone, downgrading its importance in the tree
  void unmarkAsMilestone(E element) {
    // TODO
  }

  /// Returns the total number of elements in the tree
  int get length {
    return _root.length;
  }

  /// Returns a [List] of top-level (exposed) elements in the tree
  List<E> get data {
    // TODO
    return null;
  }

  /// Returns a subtree rooted at the given element.
  TimelineTree<E> getSubtreeAt(E element) {
    // TODO
    return null;
  }

  bool find(E element) => _root.find(element);

  String toString() => "TimelineTree[ ${_root.toString()} ]";
}
