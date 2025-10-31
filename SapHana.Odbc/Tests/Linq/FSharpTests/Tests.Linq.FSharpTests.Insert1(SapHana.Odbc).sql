-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

