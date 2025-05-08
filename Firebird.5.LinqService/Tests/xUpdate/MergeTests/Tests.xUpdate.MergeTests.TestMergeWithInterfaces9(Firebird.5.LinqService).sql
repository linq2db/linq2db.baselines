﻿BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id", CAST('2' AS VARCHAR(1)) AS "source_Value" FROM rdb$database) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" OR "Source"."source_Id" IS NULL THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

