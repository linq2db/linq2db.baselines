BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = '3'
WHERE
	Target."Value" <> "Source"."Value_1" OR Target."Value" IS NULL AND "Source"."Value_1" IS NOT NULL OR
Target."Value" IS NOT NULL AND "Source"."Value_1" IS NULL
DELETE WHERE
	Target."Value" <> "Source"."Value_1" OR Target."Value" IS NULL AND "Source"."Value_1" IS NOT NULL OR
Target."Value" IS NOT NULL AND "Source"."Value_1" IS NULL

