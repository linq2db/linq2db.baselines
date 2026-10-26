-- Firebird.2.5 Firebird
SELECT
	"p"."ParentID",
	"ch"."ChildID",
	"gc"."GrandChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"
		LEFT JOIN "GrandChild" "gc" ON "p"."ParentID" = "gc"."ParentID" AND "ch"."ChildID" = "gc"."ChildID" AND ("p"."Value1" <> 1 OR "p"."Value1" IS NULL) AND "ch"."ChildID" <> 21

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

