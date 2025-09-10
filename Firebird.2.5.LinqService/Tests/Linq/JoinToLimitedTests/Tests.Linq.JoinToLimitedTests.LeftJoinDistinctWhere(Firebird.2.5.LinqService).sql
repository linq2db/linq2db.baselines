BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "o"."ParentID"

