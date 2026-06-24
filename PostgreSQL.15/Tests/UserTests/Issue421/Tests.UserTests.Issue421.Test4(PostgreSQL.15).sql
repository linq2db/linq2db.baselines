-- PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

