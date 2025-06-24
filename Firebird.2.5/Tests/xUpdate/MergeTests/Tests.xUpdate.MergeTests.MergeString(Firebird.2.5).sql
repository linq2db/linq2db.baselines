BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	MAX("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 3 AS "source_ID", _utf8 x'00' AS "source_charDataType", CAST(_utf8 x'00' AS CHAR(1)) AS "source_ncharDataType", CAST(_utf8 x'74657374006974' AS VARCHAR(7)) AS "source_nvarcharDataType" FROM rdb$database) "Source"
(
	"source_ID",
	"source_charDataType",
	"source_ncharDataType",
	"source_nvarcharDataType"
)
ON ("Target".ID = "Source"."source_ID")

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
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1".ID,
	"t1"."charDataType",
	"t1"."ncharDataType",
	"t1"."nvarcharDataType"
FROM
	"AllTypes" "t1"
ORDER BY
	"t1".ID DESC

BeforeExecute
DisposeTransaction
