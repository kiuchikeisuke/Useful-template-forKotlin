<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
<#if isClickable>
             android:focusable="true"
             android:clickable="true"
             android:foreground="?android:attr/selectableItemBackground"
</#if>
             android:layout_width="match_parent"
             android:layout_height="wrap_content">
    <LinearLayout
        android:orientation="vertical"
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

    </LinearLayout>
</FrameLayout>
