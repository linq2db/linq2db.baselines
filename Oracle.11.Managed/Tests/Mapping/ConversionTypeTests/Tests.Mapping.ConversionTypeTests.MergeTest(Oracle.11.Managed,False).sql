BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 1 AS "source_ID", '***OOO***' AS "source_Data" FROM sys.dual
	UNION ALL
	SELECT 2, '***SSS***' FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 3 AS "source_ID", '***III***' AS "source_Data" FROM sys.dual) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

