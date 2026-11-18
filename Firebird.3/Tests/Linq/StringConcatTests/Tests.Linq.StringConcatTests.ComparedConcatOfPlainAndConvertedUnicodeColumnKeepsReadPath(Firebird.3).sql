-- Firebird.3 Firebird3
SELECT
	"r"."Plain" || "r"."Conv"
FROM
	"PlainAndConvertedUnicodeRow" "r"
ORDER BY
	"r"."Id"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	"r"."Plain" || "r"."Conv" = @read

-- Firebird.3 Firebird3
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	"r"."Plain" || "r"."Conv" <> @read

-- Firebird.3 Firebird3
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"PlainAndConvertedUnicodeRow" "r"
		WHERE
			'A-x:n1' = "r"."Plain" || "r"."Conv"
	)
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" "r"
WHERE
	"r"."Plain" || "r"."Conv" IN ('A-x:n1')

