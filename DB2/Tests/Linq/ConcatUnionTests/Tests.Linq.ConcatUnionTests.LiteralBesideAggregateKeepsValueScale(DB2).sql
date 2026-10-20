-- DB2 DB2.LUW DB2LUW
SELECT
	MAX("g_1"."Value")
FROM
	"ScaledDecimalRow" "g_1"
GROUP BY
	"g_1"."Id"
UNION ALL
SELECT
	Decimal(1.004, 19, 3)
FROM
	"ScaledDecimalRow" "r"

-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN "r"."Value"
		ELSE "r"."Value" + 1
	END
FROM
	"ScaledDecimalRow" "r"
UNION ALL
SELECT
	Decimal(1.004, 19, 3)
FROM
	"ScaledDecimalRow" "r_1"

