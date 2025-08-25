BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN("g_1"."ChildID"),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

