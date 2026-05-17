-- Firebird.5 Firebird4
DECLARE @yes VarChar(1) -- String
SET     @yes = 'X'
DECLARE @no VarChar -- String
SET     @no = NULL

UPDATE
	"TableWithConverterValue" "x"
SET
	"Test1" = CASE
		WHEN ("x"."Id" > 0) THEN CAST(@yes AS VARCHAR(1))
		ELSE CAST(@no AS VARCHAR(1))
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

