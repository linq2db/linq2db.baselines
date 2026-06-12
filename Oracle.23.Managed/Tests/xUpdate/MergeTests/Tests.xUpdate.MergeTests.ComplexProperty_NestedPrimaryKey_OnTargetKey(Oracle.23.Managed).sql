-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(5) -- String
SET     @Code = 'first'
DECLARE @Key_Value Int32
SET     @Key_Value = 1

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	:Code,
	:Key_Value
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(7) -- String
SET     @Code = 'skipped'
DECLARE @Key_Value Int32
SET     @Key_Value = 2

INSERT INTO "NestedKeyTarget"
(
	"Code",
	"Id"
)
VALUES
(
	:Code,
	:Key_Value
)

-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "NestedKeyTarget" Target
USING (
	SELECT 1 AS "Key_Value", 'first-updated' AS "Code" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Key_Value")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Code",
	t1."Id"
FROM
	"NestedKeyTarget" t1
ORDER BY
	t1."Id"

