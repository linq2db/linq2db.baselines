BeforeExecute
-- Firebird.3 Firebird3

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id" FROM rdb$database) "Source"
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

