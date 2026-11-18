-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"TicksConversionRow" "r"
WHERE
	"r"."Plain" = "r"."Date"

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"TicksConversionRow" "r"
WHERE
	"r"."Plain" < "r"."Date"

-- Firebird.3 Firebird3
SELECT
	CASE
		WHEN "r"."Id" <> 1 THEN "r"."Date"
		ELSE "r"."Plain"
	END
FROM
	"TicksConversionRow" "r"
ORDER BY
	"r"."Id"

