-- Firebird.2.5 Firebird
DECLARE @Code VarChar(5) -- String
SET     @Code = 'first'
DECLARE @Key_Value Integer -- Int32
SET     @Key_Value = 1

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	@Code,
	@Key_Value
)

-- Firebird.2.5 Firebird
DECLARE @Code VarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Key_Value Integer -- Int32
SET     @Key_Value = 2

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	@Code,
	@Key_Value
)

-- Firebird.2.5 Firebird

MERGE INTO "NestedKeyTarget" "Target"
USING (
	SELECT 1 AS "Key_Value", CAST('first-updated' AS VARCHAR(13)) AS "Code" FROM rdb$database) "Source"
(
	"Key_Value",
	"Code"
)
ON ("Target"."Id" = "Source"."Key_Value")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Code",
	"t1"."Id"
FROM
	"NestedKeyTarget" "t1"
ORDER BY
	"t1"."Id"

