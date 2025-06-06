BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 10 AS "source_ID", _utf8 x'00' AS "source_charDataType", CAST(_utf8 x'00' AS CHAR(1)) AS "source_ncharDataType", NULL AS "source_nvarcharDataType" FROM rdb$database) "Source"
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."source_charDataType",
	"ncharDataType" = "Source"."source_ncharDataType",
	"nvarcharDataType" = "Source"."source_nvarcharDataType"

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
DisposeTransaction
