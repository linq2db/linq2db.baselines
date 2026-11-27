-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText Varchar2(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "EnumConverterTable"
(
	"Id",
	"SomeText"
)
VALUES
(
	:Id,
	:SomeText
)

-- Oracle.11.Managed Oracle11
SELECT
	e."Id",
	e."SomeText"
FROM
	"EnumConverterTable" e
WHERE
	e."SomeText" = 'Value1_suffix' AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	e."Id",
	e."SomeText"
FROM
	"EnumConverterTable" e
WHERE
	e."Id" = 1 AND ROWNUM <= 2

