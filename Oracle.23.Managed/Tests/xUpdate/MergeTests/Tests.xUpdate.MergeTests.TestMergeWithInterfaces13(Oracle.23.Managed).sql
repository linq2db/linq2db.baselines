BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "source_Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"
WHERE
	Target."Id" <> "Source"."source_Id"
DELETE WHERE
	Target."Id" <> "Source"."source_Id"

