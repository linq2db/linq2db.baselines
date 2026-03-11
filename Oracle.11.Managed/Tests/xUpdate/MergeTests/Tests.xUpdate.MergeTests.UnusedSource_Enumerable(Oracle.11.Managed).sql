-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Value"
FROM
	"UnusedSourceTable" r
WHERE
	r."Id" <> 1 AND ROWNUM <= 2

