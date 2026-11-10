-- Firebird.3 Firebird3
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeTable" "r"
ORDER BY
	"r"."Id"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" LIKE @read

-- Firebird.3 Firebird3
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" = @read

