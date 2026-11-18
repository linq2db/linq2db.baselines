-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"TicksConversionRow" "r"
WHERE
	"r"."Plain" = "r"."Date"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"TicksConversionRow" "r"
WHERE
	"r"."Plain" < "r"."Date"

-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "r"."Id" <> 1 THEN "r"."Date"
		ELSE "r"."Plain"
	END
FROM
	"TicksConversionRow" "r"
ORDER BY
	"r"."Id"

