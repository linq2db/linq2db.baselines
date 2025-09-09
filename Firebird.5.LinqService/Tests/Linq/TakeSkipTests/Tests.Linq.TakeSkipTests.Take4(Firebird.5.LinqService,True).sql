BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
FETCH NEXT @take ROWS ONLY

