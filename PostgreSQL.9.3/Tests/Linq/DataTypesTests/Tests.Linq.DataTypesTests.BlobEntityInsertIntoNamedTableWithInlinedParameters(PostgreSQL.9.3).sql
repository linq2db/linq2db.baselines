-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
LIMIT 1

