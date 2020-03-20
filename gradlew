<?xml version="1.0" encoding="utf-8"?>
<resources>
    <attr format="reference" name="coordinatorLayoutStyle"/>
    <style name="Widget.Support.CoordinatorLayout" parent="android:Widget">
        <item name="statusBarBackground">#000000</item>
    </style>
    <declare-styleable name="CoordinatorLayout">
        <!-- A reference to an array of integers representing the
             locations of horizontal keylines in dp from the starting edge.
             Child views can refer to these keylines for alignment using
             layout_keyline="index" where index is a 0-based index into
             this array. -->
        <attr format="reference" name="keylines"/>
        <!-- Drawable to display behind the status bar when the view is set to draw behind it. -->
        <attr format="color|reference" name="statusBarBackground"/>
    </declare-styleable>
    <declare-styleable name="CoordinatorLayout_Layout">
        <attr name="android:layout_gravity"/>
        <!-- The class name of a Behavior class defining special runtime behavior
             for this child view. -->
        <attr format="string" name="layout_behavior"/>
        <!-- The id of an anchor view that this view should position relative to. -->
        <attr format="reference" name="layout_anchor"/>
        <!-- The index of a keyline this view should position relative to.
             android:layout_gravity will affect how the view aligns to the
             specified keyline. -->
        <attr format="integer" name="layout_keyline"/>

        <!-- Specifies how an object should position relative to an anchor, on both the X and Y axes,
             within its parent's bounds.  -->
        <attr name="layout_anchorGravity">
            <!-- Push object to the top of its container, not changing its size. -->
            <flag name="top" value="0x30"/>
            <!-- Push object to the bottom of its container, not changing its size. -->
            <flag name="bottom" value="0x50"/>
            <!-- Push object to the left of its container, not changing its size. -->
            <flag name="left" value="0x03"/>
            <!-- Push object to the right of its container, not changing its size. -->
            <flag name="right" value="0x05"/>
            <!-- Place object in the vertical center of its container, not changing its size. -->
            <flag name="center_vertical" value="0x10"/>
            <!-- Grow the vertical size of the object if needed so it completely fills its container. -->
            <flag name="fill_vertical" value="0x70"/>
            <!-- Place object in the horizontal center of its container, not changing its size. -->
            <flag name="center_horizontal" value="0x01"/>
            <!-- Grow the horizontal size of the object if needed so it completely fills its container. -->
            <flag name="fill_horizontal" value="0x07"/>
            <!-- Place the object in the center of its container in both the vertical and horizontal axis, not changing its size. -->
            <flag name="center" value="0x11"/>
            <!-- Grow the horizontal and vertical size of the object if needed so it completely fills its container. -->
            <flag name="fill" value="0x77"/>
            <!-- Additional option that can be set to have the top and/or bottom edges of
                 the child clipped to its container's bounds.
                 The clip will be based on the vertical gravity: a top gravity will clip the bottom
                 edge, a bottom gravity will clip the top edge, and neither will clip both edges. -->
            <flag name="clip_vertical" value="0x80"/>
            <!-- Additional option that can be set to have the left and/or right edges of
                 the child clipped to its container's bounds.
                 The clip will be based on the horizontal gravity: a left gravity will clip the right
                 edge, a right gravity will clip the left edge, and neither will clip both edges. -->
            <flag name="clip_horizontal" value="0x08"/>
            <!-- Push object to the beginning of its container, not changing its size. -->
            <flag name="start" value="0x00800003"/>
            <!-- Push object to the end of its container, not changing its size. -->
            <flag name="end" value="0x00800005"/>
        </attr>

        <!-- Specifies how this view insets the CoordinatorLayout and make some other views
             dodge it. -->
        <attr format="enum" name="layout_insetEdge">
            <!-- Don't inset. -->
            <enum name="none" value="0x0"/>
            <!-- Inset the top edge. -->
            <enum name="top" value="0x30"/>
            <!-- Inset the bottom edge. -->
            <enum name="bottom" value="0x50"/>
            <!-- Inset the left edge. -->
            <enum name="left" value="0x03"/>
            <!-- Inset the right edge. -->
            <enum name="right" value="0x05"/>
            <!-- Inset the start edge. -->
            <enum name="start" value="0x00800003"/>
            <!-- Inset the end edge. -->
            <enum name="end" value="0x00800005"/>
        </attr>
        <!-- Specifies how this view dodges the inset edges of the CoordinatorLayout. -->
        <attr name="layout_dodgeInsetEdges">
            <!