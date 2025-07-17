BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."Value1"
LIMIT ? OFFSET ?

