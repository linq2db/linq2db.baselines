﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 10 AS ID, _utf8 x'00' AS "charDataType", CAST(_utf8 x'00' AS NChar(20)) AS "ncharDataType", NULL AS "nvarcharDataType" FROM rdb$database) "Source"
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

BeforeExecute
DisposeTransaction
