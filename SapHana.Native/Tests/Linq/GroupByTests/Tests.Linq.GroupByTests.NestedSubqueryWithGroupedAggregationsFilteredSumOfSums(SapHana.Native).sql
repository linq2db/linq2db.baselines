-- SapHana.Native SapHana
SELECT
	"product"."Id",
	(
		SELECT
			SUM("t1"."OnOrder")
		FROM
			(
				SELECT
					SUM(CAST("testGroup"."Quantity" AS Decimal(38, 10))) as "OnOrder"
				FROM
					"GroupedSumLineItem" "testGroup"
				WHERE
					"testGroup"."ProductId" = "product"."Id"
				GROUP BY
					"testGroup"."Id"
			) "t1"
	)
FROM
	"GroupedSumProduct" "product"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"GroupedSumProduct" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."ProductId",
	"t1"."Quantity"
FROM
	"GroupedSumLineItem" "t1"

