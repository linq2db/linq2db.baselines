-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(5) -- String
SET     @Code = 'first'
DECLARE @Key_Value Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(7) -- String
SET     @Code = 'skipped'
DECLARE @Key_Value Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW

MERGE INTO "NestedKeyTarget" "Target"
USING (VALUES
	(1,'first-updated')
) "Source"
(
	"Key_Value",
	"Code"
)
ON ("Target"."Id" = "Source"."Key_Value")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Code",
	"t1"."Id"
FROM
	"NestedKeyTarget" "t1"
ORDER BY
	"t1"."Id"

