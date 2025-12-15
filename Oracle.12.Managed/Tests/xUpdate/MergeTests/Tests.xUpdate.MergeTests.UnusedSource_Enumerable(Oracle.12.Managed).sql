-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE INTO "UnusedSourceTable" Target
USING (
	SELECT 1 FROM sys.dual) "Source"
ON (Target."Value" = 5)

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	5
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value" as "Value_1"
FROM
	"UnusedSourceTable" r
WHERE
	r."Id" <> 1
FETCH NEXT 2 ROWS ONLY

