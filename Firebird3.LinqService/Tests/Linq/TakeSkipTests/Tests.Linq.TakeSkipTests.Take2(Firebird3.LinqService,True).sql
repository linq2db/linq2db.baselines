BeforeExecute
-- Firebird3 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST @n
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"

