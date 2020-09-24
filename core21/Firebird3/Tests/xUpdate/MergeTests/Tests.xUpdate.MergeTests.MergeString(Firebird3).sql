BeforeExecute
-- Firebird3 Firebird

SELECT
	Max("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird3 Firebird

MERGE INTO "AllTypes" "Target"
USING (	SELECT 87,_utf8 x'00',CAST(_utf8 x'00' AS NChar(20)),CAST(_utf8 x'74657374006974' AS VARCHAR(7)) FROM rdb$database) "Source"
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
-- Firebird3 Firebird
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

