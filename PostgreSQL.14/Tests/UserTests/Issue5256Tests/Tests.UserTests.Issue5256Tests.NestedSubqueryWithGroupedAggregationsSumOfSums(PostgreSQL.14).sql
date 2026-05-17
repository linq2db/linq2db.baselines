-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	product_1."Id",
	(
		SELECT
			SUM(t1."OnOrder")
		FROM
			(
				SELECT
					SUM("testGroup"."Quantity"::decimal) as "OnOrder"
				FROM
					"PurchaseOrderLineItem" "testGroup"
				GROUP BY
					"testGroup"."Id"
			) t1
	)
FROM
	"Product" product_1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Product" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"PurchaseOrderLineItem" t1

