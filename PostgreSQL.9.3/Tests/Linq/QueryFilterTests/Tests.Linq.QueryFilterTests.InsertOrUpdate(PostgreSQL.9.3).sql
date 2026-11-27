-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"SoftDeletedPictureTable"
SET
	"PictureId" = 3
WHERE
	"SoftDeletedPictureTable"."Id" = 1

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "SoftDeletedPictureTable"
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"SoftDeletedPictureTable" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"SoftDeletedPictureTable"
SET
	"PictureId" = 3
WHERE
	"SoftDeletedPictureTable"."Id" = 1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"SoftDeletedPictureTable" r
WHERE
	NOT r."Deleted" AND r."Id" = 1
LIMIT 2

