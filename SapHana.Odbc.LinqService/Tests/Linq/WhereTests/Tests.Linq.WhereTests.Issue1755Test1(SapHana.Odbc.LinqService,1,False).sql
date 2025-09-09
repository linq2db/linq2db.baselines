BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"c_1"."ParentID",
	"c_1"."Value1"
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" = ? AND "c_1"."Value1" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

