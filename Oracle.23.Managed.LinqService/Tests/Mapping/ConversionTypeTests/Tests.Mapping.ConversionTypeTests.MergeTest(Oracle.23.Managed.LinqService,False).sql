BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 1 AS ID, '***OOO***' AS "Data_1" FROM sys.dual
	UNION ALL
	SELECT 2, '***SSS***' FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source".ID,
	"Source"."Data_1"
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

MERGE INTO "TrimTestTable" Target
USING (
	SELECT 3 AS ID, '***III***' AS "Data_1" FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source".ID,
	"Source"."Data_1"
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

