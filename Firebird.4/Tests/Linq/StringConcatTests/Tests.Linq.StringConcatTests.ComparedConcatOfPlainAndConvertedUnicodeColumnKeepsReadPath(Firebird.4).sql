-- Firebird.4 Firebird4
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeRow" "r"
ORDER BY
	"r"."Id"
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") = @read

-- Firebird.4 Firebird4
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") <> @read

-- Firebird.4 Firebird4
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"PlainAndConvertedUnicodeRow" "r"
		WHERE
			'A-x:n1' = ("r"."Plain" || "r"."Conv")
	)
FROM rdb$database

-- Firebird.4 Firebird4
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	("r"."Plain" || "r"."Conv") IN ('A-x:n1')

