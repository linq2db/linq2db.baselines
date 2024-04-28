BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 10 AS "source_ID", _utf8 x'00' AS "source_charDataType", CAST(_utf8 x'00' AS CHAR(1)) AS "source_ncharDataType" FROM rdb$database) "Source"
(
	"source_ID",
	"source_charDataType",
	"source_ncharDataType"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."source_charDataType",
	"ncharDataType" = "Source"."source_ncharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	"Source"."source_charDataType",
	"Source"."source_ncharDataType"
)

BeforeExecute
DisposeTransaction
