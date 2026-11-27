-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

