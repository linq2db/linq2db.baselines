-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'first'
DECLARE @Key_Value Int -- Int32
SET     @Key_Value = 1

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Key_Value Int -- Int32
SET     @Key_Value = 2

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "NestedKeyTarget" "Target"
USING (
	SELECT 1 AS "Key_Value", 'first-updated' AS "Code" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Key_Value")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Code",
	"t1"."Id"
FROM
	"NestedKeyTarget" "t1"
ORDER BY
	"t1"."Id"

