-- Firebird.4 Firebird4
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeTable" "r"
ORDER BY
	"r"."Id"
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" LIKE @read

-- Firebird.4 Firebird4
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	"r"."Plain" || "r"."Conv" = @read

