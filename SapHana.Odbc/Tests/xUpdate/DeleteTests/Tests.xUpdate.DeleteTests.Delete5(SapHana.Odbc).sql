-- SapHana.Odbc SapHanaOdbc
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Odbc SapHanaOdbc
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Odbc SapHanaOdbc
DECLARE @values Int -- Int32
SET     @values = 1001

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
DECLARE @values Int -- Int32
SET     @values = 1002

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
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Odbc SapHanaOdbc
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

