-- PostgreSQL.19 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BlobValue Bytea(3) -- Binary
SET     @BlobValue = E'\\x010203'::bytea

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	:Id,
	:BlobValue
)

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

