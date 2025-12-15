-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
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

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = 2
WHERE
	"p"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = 2

