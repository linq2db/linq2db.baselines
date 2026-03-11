-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BlobValue Blob -- Object
SET     @BlobValue = HEXTORAW('010203')

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

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

