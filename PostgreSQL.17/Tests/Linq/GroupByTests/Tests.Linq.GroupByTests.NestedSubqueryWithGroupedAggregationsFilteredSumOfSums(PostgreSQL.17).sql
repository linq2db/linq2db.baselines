-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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
				WHERE
					"testGroup"."ProductId" = product."Id"
				GROUP BY
					"testGroup"."Id"
			) t1
	)
FROM
	"GroupedSumProduct" product

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Name"
FROM
	"GroupedSumProduct" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"GroupedSumLineItem" t1

