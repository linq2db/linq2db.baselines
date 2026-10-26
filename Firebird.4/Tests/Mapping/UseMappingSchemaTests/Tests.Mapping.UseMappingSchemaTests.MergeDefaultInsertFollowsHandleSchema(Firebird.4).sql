-- Firebird.4 Firebird4
MERGE INTO "SourceSchemaRow" "Target"
USING (
	SELECT 1 AS "Id", 5 AS "Value_1", CAST('a' AS VARCHAR(1)) AS "Name" FROM rdb$database) "Source"
(
	"Id",
	"Value_1",
	"Name"
)
ON ("Target"."Id" = "Source"."Id")

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

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
FETCH NEXT 2 ROWS ONLY

