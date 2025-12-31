-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue5289Table" AS r
(
	"Id",
	"PictureId"
)
VALUES
(
	1,
	2
)
ON CONFLICT ("Id") DO UPDATE SET
	"PictureId" = 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."PictureId"
FROM
	"Issue5289Table" r
WHERE
	(r."Deleted" = False OR r."Deleted" IS NULL) AND r."Id" = 1
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue5289Table" AS r
(
	"Id",
	"PictureId"
)
VALUES
(
	1,
	2
)
ON CONFLICT ("Id") DO UPDATE SET
	"PictureId" = 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."PictureId"
FROM
	"Issue5289Table" r
WHERE
	(r."Deleted" = False OR r."Deleted" IS NULL) AND r."Id" = 1
LIMIT 2

