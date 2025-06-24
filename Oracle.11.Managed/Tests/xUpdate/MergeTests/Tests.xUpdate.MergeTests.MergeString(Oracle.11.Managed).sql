BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MAX(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t2.ID,
	t2."charDataType",
	t2."ncharDataType",
	t2."nvarcharDataType"
FROM
	(
		SELECT
			t1.ID,
			t1."charDataType",
			t1."ncharDataType",
			t1."nvarcharDataType"
		FROM
			"AllTypes" t1
		ORDER BY
			t1.ID DESC
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2.ID DESC

BeforeExecute
DisposeTransaction
