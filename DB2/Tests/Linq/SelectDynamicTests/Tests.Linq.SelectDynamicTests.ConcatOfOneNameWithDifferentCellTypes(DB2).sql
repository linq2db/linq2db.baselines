-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Usd",
	"x"."Id",
	CAST(NULL AS Int)
FROM
	"Amounts" "x"
WHERE
	"x"."Id" = 1
UNION ALL
SELECT
	CAST(NULL AS Decimal(18, 10)),
	"x_1"."Id",
	"x_1"."Id"
FROM
	"Amounts" "x_1"
WHERE
	"x_1"."Id" = 2

