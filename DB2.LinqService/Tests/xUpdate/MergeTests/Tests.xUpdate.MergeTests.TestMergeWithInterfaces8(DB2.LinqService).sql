﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED AND "Source"."source_Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'3'
)

