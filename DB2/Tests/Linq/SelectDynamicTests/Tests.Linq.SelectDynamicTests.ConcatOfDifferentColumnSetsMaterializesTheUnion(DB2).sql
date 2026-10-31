-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	"x"."Usd",
	CAST(NULL AS Decimal(18, 10))
FROM
	"Amounts" "x"
WHERE
	"x"."Id" = 1
UNION ALL
SELECT
	"x_1"."Id",
	CAST(NULL AS Decimal(18, 10)),
	"x_1"."Eur"
FROM
	"Amounts" "x_1"
WHERE
	"x_1"."Id" = 2

