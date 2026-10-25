-- Oracle.18.Managed Oracle.Managed Oracle12
MERGE INTO "SourceSchemaRow" Target
USING (
	SELECT 1 AS "Id", 5 AS "Value_1", 'a' AS "Name" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1",
	"Source"."Name"
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value" as "Value_1",
	t1."Name"
FROM
	"SourceSchemaRow" t1
FETCH NEXT 2 ROWS ONLY

