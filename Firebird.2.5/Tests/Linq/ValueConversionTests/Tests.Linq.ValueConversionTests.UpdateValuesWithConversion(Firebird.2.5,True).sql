-- Firebird.2.5 Firebird

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = NULL
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

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = 'X'
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

SELECT
	"x"."Id",
	"x"."NoConversion",
	"x"."Test1",
	"x"."Test2"
FROM
	"TableWithConverterValue" "x"
WHERE
	"x"."Test1" = 'X'

