﻿package com.xmlphotoalbum{	import flash.display.Sprite;	import flash.net.URLLoader;	import flash.net.URLRequest;	import flash.events.Event;	import flash.xml.XMLDocument;	public class LoadXML extends Sprite {		public var xml:XML;		public var XMLname:String;				public function LoadXML(_XMLname:String) {			XMLname=_XMLname;			var loader:URLLoader=new URLLoader  ;			loader.addEventListener(Event.COMPLETE,xmlDisplay);			loader.load(new URLRequest(XMLname));								}		public function xmlDisplay(e:Event):void {			xml = new XML(e.target.data);			xml.ignoreWhite = true;			trace(xml.image);		}	}}