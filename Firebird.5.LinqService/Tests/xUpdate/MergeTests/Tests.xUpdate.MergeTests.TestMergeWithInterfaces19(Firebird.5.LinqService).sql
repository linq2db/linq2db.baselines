﻿BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED BY SOURCE AND "Target"."Id" = 3 THEN UPDATE
SET
	"Id" = 2,
	"Value" = '3'

