-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5289Table" "t1"
SET
	"PictureId" = 3
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue5289Table"
(
	"Id",
	"PictureId",
	"Deleted"
)
VALUES
(
	1,
	2,
	0
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	"r"."Deleted" = 0 AND "r"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5289Table" "t1"
SET
	"PictureId" = 3
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	"r"."Deleted" = 0 AND "r"."Id" = 1
LIMIT 2

