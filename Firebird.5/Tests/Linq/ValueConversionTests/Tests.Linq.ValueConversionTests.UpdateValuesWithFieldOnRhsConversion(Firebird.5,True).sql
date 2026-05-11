-- Firebird.5 Firebird4

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN "x"."Test2" IS NULL THEN 'X'
		ELSE NULL
	END
WHERE
	"x"."Id" = 1

-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

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

