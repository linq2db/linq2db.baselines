BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "p" ON "c_1"."ParentID" = "p"."ParentID"

