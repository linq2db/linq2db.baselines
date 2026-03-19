-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "t1"."ParentID" = "c_1"."ParentID"
WHERE
	"t1"."ParentID" >= 4

