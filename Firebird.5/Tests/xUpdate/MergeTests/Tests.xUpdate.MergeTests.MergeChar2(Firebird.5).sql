﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 10 AS ID, _utf8 x'00' AS "charDataType", CAST(_utf8 x'00' AS CHAR(1)) AS "ncharDataType", NULL AS "nvarcharDataType" FROM rdb$database) "Source"
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
	"charDataType" = "Source"."charDataType",
	"ncharDataType" = "Source"."ncharDataType",
	"nvarcharDataType" = "Source"."nvarcharDataType"

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
