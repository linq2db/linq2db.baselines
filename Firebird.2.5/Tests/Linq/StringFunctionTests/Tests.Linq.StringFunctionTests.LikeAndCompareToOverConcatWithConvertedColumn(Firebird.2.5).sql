-- Firebird.2.5 Firebird
SELECT FIRST 1
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeTable" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" LIKE @read

-- Firebird.2.5 Firebird
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" = @read

