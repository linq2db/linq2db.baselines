BeforeExecute
-- SapHana.Native SapHana

MERGE INTO "AllTypes" "Target"
USING (	SELECT 10 "ID", char(0) "charDataType", char(0) "ncharDataType", NULL "nvarcharDataType" FROM DUMMY) "Source"
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

