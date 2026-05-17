-- DB2 DB2.LUW DB2LUW

SELECT
	"product_1"."Id",
	(
		SELECT
			SUM("t1"."OnOrder")
		FROM
			(
				SELECT
					SUM(Decimal("testGroup"."Quantity", 18, 10)) as "OnOrder"
				FROM
					"PurchaseOrderLineItem" "testGroup"
				GROUP BY
					"testGroup"."Id"
			) "t1"
	)
FROM
	"Product" "product_1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Product" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."ProductId",
	"t1"."Quantity"
FROM
	"PurchaseOrderLineItem" "t1"

