BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
LIMIT ?

