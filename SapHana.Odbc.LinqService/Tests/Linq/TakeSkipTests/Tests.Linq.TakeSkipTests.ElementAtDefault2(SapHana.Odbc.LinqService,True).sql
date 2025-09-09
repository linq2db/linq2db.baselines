BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 300000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
LIMIT 1 OFFSET ?

