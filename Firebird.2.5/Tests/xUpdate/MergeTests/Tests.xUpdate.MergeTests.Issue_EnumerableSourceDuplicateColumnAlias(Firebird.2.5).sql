BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "MyChildClass" "Target"
USING (
	SELECT 1 AS "Id", 10 AS "Value_1" FROM rdb$database
	UNION ALL
	SELECT 2, 20 FROM rdb$database
	UNION ALL
	SELECT 3, 30 FROM rdb$database
	UNION ALL
	SELECT 4, 40 FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

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

