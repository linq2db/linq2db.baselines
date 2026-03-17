-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	NOT ("c_1"."ParentID" = 2 OR "c_1"."ParentID" = 3) AND
	"c_1"."ChildID" <> 44

