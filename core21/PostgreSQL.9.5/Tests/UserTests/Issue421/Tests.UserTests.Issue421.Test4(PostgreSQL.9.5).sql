BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "BlobClass"
(
	"Id"        Int   NOT NULL,
	"BlobValue" bytea     NULL,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	E'\\x010203'
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "BlobClass"

