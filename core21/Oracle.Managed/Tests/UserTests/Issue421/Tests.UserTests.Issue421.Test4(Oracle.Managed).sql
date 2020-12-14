BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "BlobClass10"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob     NULL,

	CONSTRAINT "PK_BlobClass10" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO "BlobClass10"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	HEXTORAW('010203')
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass10" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass10" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "BlobClass10"

