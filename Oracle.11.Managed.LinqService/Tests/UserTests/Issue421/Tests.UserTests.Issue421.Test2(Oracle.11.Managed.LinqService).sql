BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

UPDATE
	"BlobClass" t1
SET
	"BlobValue" = HEXTORAW('030201')
WHERE
	t1."Id" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1 AND ROWNUM <= 1

