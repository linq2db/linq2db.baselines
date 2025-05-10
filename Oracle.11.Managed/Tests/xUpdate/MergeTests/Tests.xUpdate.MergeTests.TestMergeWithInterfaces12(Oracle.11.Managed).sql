BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "source_Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

DELETE WHERE
	Target."Id" <> "Source"."source_Id" OR "Source"."source_Id" IS NULL

