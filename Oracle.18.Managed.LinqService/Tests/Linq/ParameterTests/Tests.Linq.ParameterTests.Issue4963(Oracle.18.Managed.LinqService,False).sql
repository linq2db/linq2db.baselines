BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @offset Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" t1
SET
	"Field" = CAST(CAST(t1."Field" AS Int) + :offset AS Number(3))

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"Issue4963Table" t1
FETCH NEXT 2 ROWS ONLY

