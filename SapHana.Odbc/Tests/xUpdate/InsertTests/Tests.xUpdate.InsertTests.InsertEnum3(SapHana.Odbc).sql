-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	?,
	1
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

