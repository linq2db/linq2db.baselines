-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"p"."ParentID" >= 4

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

