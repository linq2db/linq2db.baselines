-- Firebird.2.5 Firebird
SELECT FIRST 1
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") = @read

-- Firebird.2.5 Firebird
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") <> @read

-- Firebird.2.5 Firebird
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"PlainAndConvertedUnicodeRow" "r"
			WHERE
				'A-x:n1' = ("r"."Plain" || "r"."Conv")
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") IN ('A-x:n1')

