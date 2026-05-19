-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code Varchar2(5) -- String
SET     @Code = 'first'
DECLARE @Nested_Field Int16
SET     @Nested_Field = 0

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	:Id,
	:Code,
	:Nested_Field
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Code Varchar2(7) -- String
SET     @Code = 'skipped'
DECLARE @Nested_Field Int16
SET     @Nested_Field = 0

INSERT INTO "ComplexPropertyTarget"
(
	"Id",
	"Code",
	"Field"
)
VALUES
(
	:Id,
	:Code,
	:Nested_Field
)

-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "ComplexPropertyTarget" Target
USING (
	SELECT 1 AS "Id", 'first-updated' AS "Code", 1 AS "Nested_Field" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code",
	"Field" = "Source"."Nested_Field"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Code",
	t1."Field"
FROM
	"ComplexPropertyTarget" t1
ORDER BY
	t1."Id"

