﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "AllTypes" "Target"
USING (
	SELECT 10 AS "ID", char(0) AS "charDataType", char(0) AS "ncharDataType", NULL AS "nvarcharDataType" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

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
RollbackTransaction
