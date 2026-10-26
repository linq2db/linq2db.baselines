-- SapHana.Native SapHana
MERGE INTO "UnusedSourceTable" "Target"
USING (
	SELECT 1 AS "Unused"
	FROM DUMMY WHERE 1 = 0
)
 "Source"
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

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"UnusedSourceTable" "r"
WHERE
	"r"."Id" <> 1
LIMIT 2

