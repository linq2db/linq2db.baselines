-- Firebird.2.5 Firebird

SELECT
	"child_1"."ParentID",
	"child_1"."ChildID"
FROM
	"Child" "child_1"
WHERE
	"child_1"."ChildID" = -1

