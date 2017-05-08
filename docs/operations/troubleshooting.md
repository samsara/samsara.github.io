---
layout: page
title: Troubleshooting
subtitle: Troubleshooting system errors.
nav: documentation
---

# Samsara CORE

## clj-http error

There is a known error appearing when including `[samsara/samsara-client "0.5.5.0"]` and `[samsara/moebius "0.5.5.0"]`.
The incompatibility seems to be between `[clj-http "2.0.0"]` and `[potemkin "0.3.13"]` as other people have reported (elsewhere)[https://github.com/dakrone/clj-http/issues/335].

``` text
Caused by: java.lang.NoClassDefFoundError: IllegalName: compile__stub.clj_http.headers.clj-http.headers/HeaderMap
	at java.lang.ClassLoader.preDefineClass(ClassLoader.java:654)
	at java.lang.ClassLoader.defineClass(ClassLoader.java:758)
	at java.lang.ClassLoader.defineClass(ClassLoader.java:642)
	at clojure.lang.DynamicClassLoader.defineClass(DynamicClassLoader.java:46)
	at clojure.lang.Compiler$NewInstanceExpr.compileStub(Compiler.java:7903)
	at clojure.lang.Compiler$NewInstanceExpr.build(Compiler.java:7768)
	at clojure.lang.Compiler$NewInstanceExpr$DeftypeParser.parse(Compiler.java:7678)
	at clojure.lang.Compiler.analyzeSeq(Compiler.java:6868)
	... 155 more
```

### Solution

Add an explicit `potemkin` dependency in your `project.clj`

``` clojure
(defproject st "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [samsara/samsara-client "0.5.5.0"]
                 [potemkin "0.4.1"] ;; add potemkin "0.4.1" or newer
                 [samsara/moebius "0.5.5.0"]])
```
