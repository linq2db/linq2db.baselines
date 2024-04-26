BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"a_QueryableChildren"."ParentID",
	"a_QueryableChildren"."ChildID"
FROM
	"Parent" "t1"
		INNER JOIN "Child" "a_QueryableChildren" ON "t1"."ParentID" = "a_QueryableChildren"."ParentID"

