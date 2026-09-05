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
DECLARE @values_0 Int -- Int32
SET     @values_0 = 1001

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
DECLARE @values_0 Int -- Int32
SET     @values_0 = 1002

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

