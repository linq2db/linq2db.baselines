-- Oracle.11.Managed Oracle11
UPDATE
	"ByteFieldUpdateTable" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + -1 AS Number(3))

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
WHERE
	ROWNUM <= 2

