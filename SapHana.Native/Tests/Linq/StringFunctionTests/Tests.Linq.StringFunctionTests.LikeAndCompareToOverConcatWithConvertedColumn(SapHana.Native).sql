-- SapHana.Native SapHana
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeTable" "r"
ORDER BY
	"r"."Id"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	("r"."Plain" || "r"."Conv") LIKE :"read"

-- SapHana.Native SapHana
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" "r"
WHERE
	("r"."Plain" || "r"."Conv") = :"read"

