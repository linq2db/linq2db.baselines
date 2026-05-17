-- Oracle.11.Managed Oracle11

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "Id", '2' AS "Value_1" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
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
 WHERE "Source"."Id" > 1

