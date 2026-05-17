-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @yes Varchar2(1) -- String
SET     @yes = 'X'
DECLARE @no Varchar2 -- String
SET     @no = NULL

UPDATE
	"TableWithConverterValue" x
SET
	"Test1" = CASE
		WHEN x."Test2" IS NULL THEN :yes
		ELSE :no
	END
WHERE
	x."Id" = 1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."NoConversion",
	x."Test1",
	x."Test2"
FROM
	"TableWithConverterValue" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

