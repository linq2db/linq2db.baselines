BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

UPDATE
	"Issue4963Table" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + -1 AS Number(3))

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"Issue4963Table" t1
WHERE
	ROWNUM <= 2

