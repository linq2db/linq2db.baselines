BeforeExecute
-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
FETCH NEXT @n ROWS ONLY

