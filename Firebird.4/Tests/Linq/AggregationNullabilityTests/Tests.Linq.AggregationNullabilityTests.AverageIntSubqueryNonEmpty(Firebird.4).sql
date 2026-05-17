-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			AVG("i"."IntValue")
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

