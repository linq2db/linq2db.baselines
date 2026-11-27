-- PostgreSQL.15 PostgreSQL12
INSERT INTO "SoftDeletedPictureTable" AS t1
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"SoftDeletedPictureTable" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
INSERT INTO "SoftDeletedPictureTable" AS t1
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"SoftDeletedPictureTable" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

