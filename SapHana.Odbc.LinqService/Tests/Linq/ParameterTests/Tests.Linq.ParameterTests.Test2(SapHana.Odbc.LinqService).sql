BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? OR "p"."ParentID" >= ? OR "p"."ParentID" >= ?
ORDER BY
	"p"."ParentID"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? OR "p"."ParentID" >= ? OR "p"."ParentID" >= ?
ORDER BY
	"p"."ParentID"
LIMIT 1

