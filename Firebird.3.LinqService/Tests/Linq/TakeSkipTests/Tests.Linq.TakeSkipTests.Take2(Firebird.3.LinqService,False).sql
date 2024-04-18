BeforeExecute
-- Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @n ROWS ONLY

