-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeTable" "r"
ORDER BY
	"r"."Id"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	("r"."Plain" || "r"."Conv") LIKE ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	("r"."Plain" || "r"."Conv") = ?

