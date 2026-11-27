-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Name"
FROM
	"GroupedSumProduct" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"GroupedSumLineItem" t1

