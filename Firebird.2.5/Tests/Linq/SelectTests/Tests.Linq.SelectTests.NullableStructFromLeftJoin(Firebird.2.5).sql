-- Firebird.2.5 Firebird
SELECT
	"p"."ParentID",
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"

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

