BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 1 AS "source_ID", CAST('***OOO***' AS VARCHAR(9)) AS "source_Data" FROM rdb$database
	UNION ALL
	SELECT 2, CAST('***SSS***' AS VARCHAR(9)) FROM rdb$database) "Source"
(
	"source_ID",
	"source_Data"
)
ON ("Target".ID = "Source"."source_ID")

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
-- Firebird.5 Firebird4

MERGE INTO "TrimTestTable" "Target"
USING (
	SELECT 3 AS "source_ID", CAST('***III***' AS VARCHAR(9)) AS "source_Data" FROM rdb$database) "Source"
(
	"source_ID",
	"source_Data"
)
ON ("Target".ID = "Source"."source_ID")

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
-- Firebird.5 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

