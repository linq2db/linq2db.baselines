BeforeExecute
-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @n ROWS ONLY

