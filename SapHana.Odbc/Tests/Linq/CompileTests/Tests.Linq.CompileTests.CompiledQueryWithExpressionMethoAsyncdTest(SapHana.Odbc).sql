BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ?
ORDER BY
	"x"."ParentID" DESC
LIMIT 1

