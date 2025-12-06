-- Firebird.4 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id", CAST('2' AS VARCHAR(1)) AS "Value_1" FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
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

