BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TrimTestTable"
			(
				ID     Int                                   NOT NULL,
				"Data" VarChar(50) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT 1,CAST('***XXX***' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,'***VVV***' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

