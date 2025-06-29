﻿BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Id" = 2,
	"Value" = '3'

