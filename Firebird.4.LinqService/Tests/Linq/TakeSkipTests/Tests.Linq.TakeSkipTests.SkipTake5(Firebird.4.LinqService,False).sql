BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

