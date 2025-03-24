BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "source_Id", '2' AS "source_Value" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"
WHERE
	Target."Id" <> "Source"."source_Id"

