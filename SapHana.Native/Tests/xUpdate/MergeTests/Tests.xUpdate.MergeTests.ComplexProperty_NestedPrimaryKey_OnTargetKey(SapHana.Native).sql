-- SapHana.Native SapHana
DECLARE @Code NVarChar(5) -- String
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
	:"Code",
	:"Key_Value"
)

-- SapHana.Native SapHana
DECLARE @Code NVarChar(7) -- String
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
	:"Code",
	:"Key_Value"
)

-- SapHana.Native SapHana
MERGE INTO "NestedKeyTarget" "Target"
USING (
	SELECT 1 AS "Key_Value", 'first-updated' AS "Code" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Key_Value")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code"

-- SapHana.Native SapHana
SELECT
	"t1"."Code",
	"t1"."Id"
FROM
	"NestedKeyTarget" "t1"
ORDER BY
	"t1"."Id"

