-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	product."Id",
	(
		SELECT
			SUM(t1."OnOrder")
		FROM
			(
				SELECT
					SUM(CAST(testGroup."Quantity" AS Decimal(28, 10))) as "OnOrder"
				FROM
					"GroupedSumLineItem" testGroup
				WHERE
					testGroup."ProductId" = product."Id"
				GROUP BY
					testGroup."Id"
			) t1
	)
FROM
	"GroupedSumProduct" product

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Name"
FROM
	"GroupedSumProduct" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"GroupedSumLineItem" t1

