-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	E'\\x010203'::bytea
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

UPDATE
	"BlobClass"
SET
	"BlobValue" = E'\\x030201'::bytea
WHERE
	"BlobClass"."Id" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

