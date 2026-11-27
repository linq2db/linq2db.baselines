-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	e."SomeText"
FROM
	"EnumConverterTable" e
WHERE
	e."SomeText" = 'Value1_suffix'
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	e."SomeText"
FROM
	"EnumConverterTable" e
WHERE
	e."Id" = 1
FETCH NEXT 2 ROWS ONLY

