BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "BlobClass20"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob     NULL,

	CONSTRAINT "PK_BlobClass20" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO "BlobClass20"
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass20" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass20" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "BlobClass20"

