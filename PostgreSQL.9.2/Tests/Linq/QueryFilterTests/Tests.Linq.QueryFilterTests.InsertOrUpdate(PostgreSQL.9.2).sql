-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"Issue5289Table"
SET
	"PictureId" = 3
WHERE
	"Issue5289Table"."Id" = 1

-- PostgreSQL.9.2 PostgreSQL
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
	False
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"Issue5289Table"
SET
	"PictureId" = 3
WHERE
	"Issue5289Table"."Id" = 1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

