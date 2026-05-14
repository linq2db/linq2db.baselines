-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			SUM("i"."IntValueN")
		FROM
			"Inner" "i"
		WHERE
			"i"."Group" = "o"."Group"
	)
FROM
	"Outer" "o"
WHERE
	"o"."Id" = 2
FETCH NEXT 1 ROWS ONLY

