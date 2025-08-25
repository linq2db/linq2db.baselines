BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT 1 AS "Id" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
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
 WHERE "Source"."Id" > 1

