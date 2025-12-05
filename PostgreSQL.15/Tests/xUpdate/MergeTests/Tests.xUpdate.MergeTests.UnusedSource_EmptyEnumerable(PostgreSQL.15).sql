-- PostgreSQL.15 PostgreSQL

MERGE INTO "UnusedSourceTable" "Target"
USING (
	SELECT 1 AS "Unused"
	FROM "UnusedSourceTable"	WHERE 1 = 0
)
 "Source"
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

-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"UnusedSourceTable" r
WHERE
	r."Id" <> 1
LIMIT 2

