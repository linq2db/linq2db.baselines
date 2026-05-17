-- Firebird.3 Firebird3

SELECT
	"o"."Anchor" - Coalesce((
		SELECT
			SUM("i"."DecimalValue")
		FROM
			"Inner" "i"
		WHERE
			"i"."Group" = "o"."Group"
	), 0)
FROM
	"Outer" "o"
WHERE
	"o"."Id" = 2
FETCH NEXT 1 ROWS ONLY

