-- Firebird.5 Firebird4

SELECT
	1000 - Coalesce((
		SELECT
			SUM("i"."LongValue")
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

