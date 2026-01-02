-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue5289Table" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"PictureId" = 3

-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue5289Table" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"PictureId" = 3

-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

