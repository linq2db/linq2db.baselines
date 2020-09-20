BeforeExecute
-- Firebird3 Firebird

MERGE INTO "AllTypes" "Target"
USING (	SELECT 10,_utf8 x'00',CAST(_utf8 x'00' AS NChar(20)),NULL FROM rdb$database) "Source"
(
	ID, 
	"charDataType", 
	"ncharDataType", 
	"nvarcharDataType"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Target"."charDataType" = "Source"."charDataType",
	"Target"."ncharDataType" = "Source"."ncharDataType",
	"Target"."nvarcharDataType" = "Source"."nvarcharDataType"

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

