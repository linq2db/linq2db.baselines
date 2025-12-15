-- Firebird.5 Firebird4

MERGE INTO "CacheTestTable" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM rdb$database
	UNION ALL
	SELECT 2, 2 FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

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

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.5 Firebird4

MERGE INTO "CacheTestTable" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "Value_1" FROM rdb$database
	UNION ALL
	SELECT 2, 4 FROM rdb$database
	UNION ALL
	SELECT 3, 3 FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

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

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

