-- Firebird.5 Firebird4

MERGE INTO "UnusedSourceTable" "Target"
USING (
	SELECT 1 FROM rdb$database) "Source"
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

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"UnusedSourceTable" "r"
WHERE
	"r"."Id" <> 1
FETCH NEXT 2 ROWS ONLY

