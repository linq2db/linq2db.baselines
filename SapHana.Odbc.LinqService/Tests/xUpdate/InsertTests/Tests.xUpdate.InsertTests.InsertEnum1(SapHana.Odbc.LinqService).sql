BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	1001,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = ? AND "t1"."Value1" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

