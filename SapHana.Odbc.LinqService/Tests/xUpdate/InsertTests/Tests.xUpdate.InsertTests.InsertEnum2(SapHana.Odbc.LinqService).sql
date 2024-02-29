BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

