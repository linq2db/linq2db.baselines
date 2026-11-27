-- Oracle.19.Managed Oracle.Managed Oracle12
UPDATE
	"ByteFieldUpdateTable" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + -1 AS Number(3))

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
FETCH NEXT 2 ROWS ONLY

