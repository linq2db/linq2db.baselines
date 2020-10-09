BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "BlobClass19"
(
	"Id"        Int   NOT NULL,
	"BlobValue" bytea     NULL,

	CONSTRAINT "PK_BlobClass19" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "BlobClass19"
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
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."Id", 
	t1."BlobValue"
FROM
	"BlobClass19" t1
WHERE
	t1."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."Id", 
	t1."BlobValue"
FROM
	"BlobClass19" t1
WHERE
	t1."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "BlobClass19"

