BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MAX(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "AllTypes" Target
USING (
	SELECT 3 AS "source_ID", chr(0) AS "source_charDataType", chr(0) AS "source_ncharDataType", 'test' || chr(0) || 'it' AS "source_nvarcharDataType" FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."source_charDataType",
	"Source"."source_ncharDataType",
	"Source"."source_nvarcharDataType"
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID,
	t1."charDataType",
	t1."ncharDataType",
	t1."nvarcharDataType"
FROM
	"AllTypes" t1
ORDER BY
	t1.ID DESC
FETCH NEXT :take ROWS ONLY

BeforeExecute
DisposeTransaction
