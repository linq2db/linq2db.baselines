-- PostgreSQL.15 PostgreSQL12
MERGE INTO "UnusedSourceTable" "Target"
USING (VALUES
	(1)
) "Source"
(
"Unused"
)
ON ("Target"."Value" = 5)

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

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Value"
FROM
	"UnusedSourceTable" r
WHERE
	r."Id" <> 1
LIMIT 2

