-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Child" "t1"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"GrandChild" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @LeftId Int -- Int32
SET     @LeftId = 100
DECLARE @RightId Int -- Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "RightId"
	FROM
		"Parent" "t1"
			CROSS JOIN "Child" "t2"
) "Source"
ON ("Target"."GrandChildID" = "Source"."RightId")

WHEN NOT MATCHED THEN
INSERT
(
	"ChildID"
)
VALUES
(
	"Source"."RightId"
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
ORDER BY
	"t1"."GrandChildID",
	"t1"."ChildID"

