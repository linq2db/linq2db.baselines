-- DB2 DB2.LUW DB2LUW
SELECT
	"product"."Id",
	(
		SELECT
			SUM("t1"."OnOrder")
		FROM
			(
				SELECT
					SUM(Decimal("testGroup"."Quantity", 18, 10)) as "OnOrder"
				FROM
					"GroupedSumLineItem" "testGroup"
				GROUP BY
					"testGroup"."Id"
			) "t1"
	)
FROM
	"GroupedSumProduct" "product"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"GroupedSumProduct" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."ProductId",
	"t1"."Quantity"
FROM
	"GroupedSumLineItem" "t1"

