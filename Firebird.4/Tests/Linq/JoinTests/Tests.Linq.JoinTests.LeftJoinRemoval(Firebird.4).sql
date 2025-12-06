-- Firebird.4 Firebird4

SELECT
	"ch1"."ParentID",
	"ch1"."ChildID"
FROM
	"Parent" "t1"
		INNER JOIN "Child" "ch" ON "t1"."ParentID" = "ch"."ParentID"
		INNER JOIN "Child" "ch1" ON "ch"."ChildID" = "ch1"."ChildID"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

