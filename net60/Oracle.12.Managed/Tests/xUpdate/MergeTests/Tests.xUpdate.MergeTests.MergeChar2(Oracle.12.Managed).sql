﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE INTO "AllTypes" Target
USING
(
	SELECT 10 AS ID, chr(0) AS "charDataType", chr(0) AS "ncharDataType", NULL AS "nvarcharDataType" FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	Target."charDataType" = "Source"."charDataType",
	Target."ncharDataType" = "Source"."ncharDataType",
	Target."nvarcharDataType" = "Source"."nvarcharDataType"

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
