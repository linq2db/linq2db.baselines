BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "BlobClass"
(
	"Id"        Int   NOT NULL,
	"BlobValue" bytea     NULL,

	CONSTRAINT "PK_BlobClass" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

UPDATE
	"BlobClass"
SET
	"BlobValue" = E'\\x030201'
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "BlobClass"

