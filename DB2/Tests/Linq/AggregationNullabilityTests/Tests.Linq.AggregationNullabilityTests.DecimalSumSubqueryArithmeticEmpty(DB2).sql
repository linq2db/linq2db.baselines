-- DB2 DB2.LUW DB2LUW

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

