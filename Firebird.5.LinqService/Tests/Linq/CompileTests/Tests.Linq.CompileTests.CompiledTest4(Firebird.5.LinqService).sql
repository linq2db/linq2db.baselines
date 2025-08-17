BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" IN (1, 2)

