BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."ParentID",
	"t"."ChildID",
	"gr"."ParentID",
	"gr"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "gr" ON "t"."ParentID" = "gr"."ParentID"

