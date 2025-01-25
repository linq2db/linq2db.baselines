BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
FETCH NEXT 3 ROWS ONLY

