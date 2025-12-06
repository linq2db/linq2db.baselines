-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
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
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = ?

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

