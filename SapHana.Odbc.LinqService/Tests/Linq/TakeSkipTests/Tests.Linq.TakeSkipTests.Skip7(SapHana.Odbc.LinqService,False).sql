BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
LIMIT 4200000000 OFFSET ?

