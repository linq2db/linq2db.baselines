BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	MAX("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird.3 Firebird3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 3 AS ID, _utf8 x'00' AS "charDataType", CAST(_utf8 x'00' AS CHAR(1)) AS "ncharDataType", CAST(_utf8 x'74657374006974' AS VARCHAR(7)) AS "nvarcharDataType" FROM rdb$database) "Source"
(
	ID,
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
ON ("Target".ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType",
	"Source"."nvarcharDataType"
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1".ID,
	"t1"."charDataType",
	"t1"."ncharDataType",
	"t1"."nvarcharDataType"
FROM
	"AllTypes" "t1"
ORDER BY
	"t1".ID DESC
FETCH NEXT @take ROWS ONLY

BeforeExecute
DisposeTransaction
