-- Firebird.2.5 Firebird

SELECT FIRST 1
	(
		SELECT
			SUM("i"."DecimalValueN")
		FROM
			"Inner" "i"
		WHERE
			"i"."Group" = "o"."Group"
	)
FROM
	"Outer" "o"
WHERE
	"o"."Id" = 2

