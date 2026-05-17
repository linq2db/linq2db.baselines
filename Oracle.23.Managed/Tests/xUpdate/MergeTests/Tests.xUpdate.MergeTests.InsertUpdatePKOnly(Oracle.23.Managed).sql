-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "PKOnlyTable" Target
USING (
	SELECT 1 AS ID FROM sys.dual
	UNION ALL
	SELECT 2 FROM sys.dual
	UNION ALL
	SELECT 3 FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source".ID
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"PKOnlyTable" t1
ORDER BY
	t1.ID

