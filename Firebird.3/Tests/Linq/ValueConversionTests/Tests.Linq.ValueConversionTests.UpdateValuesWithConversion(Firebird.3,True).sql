-- Firebird.3 Firebird3

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = NULL
WHERE
	"x"."Id" = 1

-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = 'X'
WHERE
	"x"."Id" = 2

-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = 'X'

