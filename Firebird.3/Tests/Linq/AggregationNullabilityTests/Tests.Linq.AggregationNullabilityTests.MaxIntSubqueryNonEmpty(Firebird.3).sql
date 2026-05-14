-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			MAX("i"."IntValue")
		FROM
			"Inner" "i"
		WHERE
			"i"."Group" = "o"."Group"
	)
FROM
	"Outer" "o"
WHERE
	"o"."Id" = 1
FETCH NEXT 1 ROWS ONLY

