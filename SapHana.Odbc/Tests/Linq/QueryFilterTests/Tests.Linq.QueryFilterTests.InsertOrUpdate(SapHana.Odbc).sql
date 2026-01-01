-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5289Table" "r"
SET
	"PictureId" = 3
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue5289Table"
(
	"Id",
	"PictureId"
)
VALUES
(
	1,
	2
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"Issue5289Table" "r"
SET
	"PictureId" = 3
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1
LIMIT 2

