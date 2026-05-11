-- Firebird.2.5 Firebird

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN ("x"."Id" > 0) THEN 'X'
		ELSE NULL
	END
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

