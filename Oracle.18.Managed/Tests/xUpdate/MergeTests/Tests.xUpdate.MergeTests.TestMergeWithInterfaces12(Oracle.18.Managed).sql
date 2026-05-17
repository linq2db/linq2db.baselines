-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

DELETE WHERE
	Target."Id" <> "Source"."Id"

