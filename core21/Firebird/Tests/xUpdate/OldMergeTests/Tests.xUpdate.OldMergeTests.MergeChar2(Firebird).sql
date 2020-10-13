BeforeExecute
-- Firebird

MERGE INTO "AllTypes" "Target"
USING (	SELECT 10,_utf8 x'00',CAST(_utf8 x'00' AS NChar(20)) FROM rdb$database) "Source"
(
	ID, 
	"charDataType", 
	"ncharDataType"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Target"."charDataType" = "Source"."charDataType",
	"Target"."ncharDataType" = "Source"."ncharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType"
)

