-- SapHana.Native SapHana
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeRow" "r"
ORDER BY
	"r"."Id"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") = :"read"

-- SapHana.Native SapHana
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") <> :"read"

-- SapHana.Native SapHana
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				"r"."Plain" || "r"."Conv"
			FROM
				"PlainAndConvertedUnicodeRow" "r"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") IN ('A-x:n1')

