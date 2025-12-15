-- Oracle.12.Managed Oracle.Managed Oracle12

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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

