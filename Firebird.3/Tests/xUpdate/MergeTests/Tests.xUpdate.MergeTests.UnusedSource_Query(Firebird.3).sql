-- Firebird.3 Firebird3
MERGE INTO "UnusedSourceTable" "Target"
USING (
	SELECT
		*
	FROM
		"UnusedSourceTable" "Target_1"
) "Source"
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

-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"UnusedSourceTable" "r"
WHERE
	"r"."Id" <> 1
FETCH NEXT 2 ROWS ONLY

