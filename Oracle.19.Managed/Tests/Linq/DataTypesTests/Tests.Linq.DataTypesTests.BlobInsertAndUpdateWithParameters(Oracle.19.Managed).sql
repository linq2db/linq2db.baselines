-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BlobValue Blob -- Object
SET     @BlobValue = HEXTORAW('010203')

INSERT INTO "BlobValueEntity"
(
	"Id",
	"BlobValue"
)
VALUES
(
	:Id,
	:BlobValue
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @BlobValue Blob -- Object
SET     @BlobValue = HEXTORAW('030201')

UPDATE
	"BlobValueEntity" t1
SET
	"BlobValue" = :BlobValue
WHERE
	t1."Id" = 1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobValueEntity" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

