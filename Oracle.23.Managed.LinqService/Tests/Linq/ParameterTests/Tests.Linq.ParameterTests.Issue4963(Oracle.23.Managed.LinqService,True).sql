BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

UPDATE
	"Issue4963Table" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + -1 AS Number(3))

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Field"
FROM
	"Issue4963Table" t1
FETCH NEXT 2 ROWS ONLY

