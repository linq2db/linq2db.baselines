-- PostgreSQL.11 PostgreSQL
INSERT INTO "BlobValueEntity"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	E'\\x010203'::bytea
)

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.11 PostgreSQL
UPDATE
	"BlobValueEntity"
SET
	"BlobValue" = E'\\x030201'::bytea
WHERE
	"BlobValueEntity"."Id" = 1

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

