BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "source_Id", '2' AS "source_Value" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = '3'

DELETE WHERE
	Target."Value" <> "Source"."source_Value" OR Target."Value" IS NULL AND "Source"."source_Value" IS NOT NULL OR
Target."Value" IS NOT NULL AND "Source"."source_Value" IS NULL

