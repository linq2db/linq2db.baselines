-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			MIN("i"."IntValue")
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

