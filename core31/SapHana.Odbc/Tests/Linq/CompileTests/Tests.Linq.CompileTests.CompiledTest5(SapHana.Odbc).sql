BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 1
DECLARE @Value1_1  -- Int32
SET     @Value1_1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" IS NULL

