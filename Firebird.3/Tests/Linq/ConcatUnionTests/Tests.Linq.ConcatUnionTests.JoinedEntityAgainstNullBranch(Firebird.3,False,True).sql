-- Firebird.3 Firebird3
SELECT
	"p"."ParentID",
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p"
UNION ALL
SELECT
	"t1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

