-- PostgreSQL.19 PostgreSQL12
SELECT
	product."Id",
	(
		SELECT
			SUM(t1."OnOrder")
		FROM
			(
				SELECT
					SUM("testGroup"."Quantity"::decimal) as "OnOrder"
				FROM
					"GroupedSumLineItem" "testGroup"
				GROUP BY
					"testGroup"."Id"
			) t1
	)
FROM
	"GroupedSumProduct" product

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Name"
FROM
	"GroupedSumProduct" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"GroupedSumLineItem" t1

