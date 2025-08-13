BeforeExecute
-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
OFFSET @n ROWS

