BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "BlobClass"
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
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

UPDATE
	"BlobClass" t1
SET
	"BlobValue" = HEXTORAW('030201')
WHERE
	t1."Id" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

