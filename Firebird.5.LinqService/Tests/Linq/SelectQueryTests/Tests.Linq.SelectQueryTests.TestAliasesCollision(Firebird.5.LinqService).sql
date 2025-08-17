BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"child_1"."ParentID",
	"child_1"."ChildID"
FROM
	"Child" "child_1"
WHERE
	"child_1"."ChildID" = -1

