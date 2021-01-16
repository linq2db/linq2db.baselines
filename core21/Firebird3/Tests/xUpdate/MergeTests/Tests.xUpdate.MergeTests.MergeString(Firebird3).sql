BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "AllTypesID" TO 2

BeforeExecute
-- Firebird3 Firebird

MERGE INTO "AllTypes" "Target"
USING (	SELECT 3, _utf8 x'00', CAST(_utf8 x'00' AS NChar(20)), CAST(_utf8 x'74657374006974' AS VARCHAR(7)) FROM rdb$database) "Source"
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

