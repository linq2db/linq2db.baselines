BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT
		"t1"."Id" as "source_Id",
		"t1"."Value" as "source_Value"
	FROM
		"ReviewIndexes" "t1"
) "Source"
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

