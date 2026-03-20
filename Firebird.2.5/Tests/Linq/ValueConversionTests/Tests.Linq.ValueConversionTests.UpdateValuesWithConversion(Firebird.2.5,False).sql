-- Firebird.2.5 Firebird
DECLARE @Test1 Char -- String
SET     @Test1 = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CAST(@Test1 AS Char(1))
WHERE
	"x"."Id" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 1

-- Firebird.2.5 Firebird
DECLARE @Test1 Char(1) -- String
SET     @Test1 = 'X'

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CAST(@Test1 AS Char(1))
WHERE
	"x"."Id" = 2

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 2

-- Firebird.2.5 Firebird
DECLARE @Test1 Char(1) -- String
SET     @Test1 = 'X'

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = @Test1

