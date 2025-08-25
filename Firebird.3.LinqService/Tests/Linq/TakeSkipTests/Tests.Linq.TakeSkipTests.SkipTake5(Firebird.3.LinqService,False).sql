BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

