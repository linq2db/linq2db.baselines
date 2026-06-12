-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code Varchar2(4) -- String
SET     @Code = 'keep'
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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Code Varchar2(6) -- String
SET     @Code = 'remove'
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

-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "ComplexPropertyTarget" Target
USING (
	SELECT 1 AS "Id", 'keep-updated' AS "Code", 1 AS "Nested_Field" FROM sys.dual
	UNION ALL
	SELECT 2, 'remove-updated', 1 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Code" = "Source"."Code",
	"Field" = "Source"."Nested_Field"
WHERE
	1 = 1
DELETE WHERE
	"Source"."Code" = 'remove-updated'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Code",
	t1."Field"
FROM
	"ComplexPropertyTarget" t1
ORDER BY
	t1."Id"

