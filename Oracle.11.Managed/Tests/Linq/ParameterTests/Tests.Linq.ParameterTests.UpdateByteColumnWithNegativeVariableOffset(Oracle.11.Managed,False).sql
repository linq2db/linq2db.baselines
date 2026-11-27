-- Oracle.11.Managed Oracle11
DECLARE @offset Int32
SET     @offset = -1

UPDATE
	"ByteFieldUpdateTable" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + :offset AS Number(3))

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
WHERE
	ROWNUM <= 2

