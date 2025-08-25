﻿BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id", CAST('2' AS VARCHAR(1)) AS "Value_1" FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

