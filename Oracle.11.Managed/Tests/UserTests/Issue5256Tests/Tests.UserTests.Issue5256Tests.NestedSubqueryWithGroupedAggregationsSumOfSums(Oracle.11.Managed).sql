-- Oracle.11.Managed Oracle11

SELECT
	product_1."Id",
	(
		SELECT
			SUM(t1."OnOrder") as "OnOrder"
		FROM
			(
				SELECT
					SUM(CAST(testGroup."Quantity" AS Decimal(28, 10))) as "OnOrder"
				FROM
					"PurchaseOrderLineItem" testGroup
				GROUP BY
					testGroup."Id"
			) t1
	)
FROM
	"Product" product_1

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name"
FROM
	"Product" t1

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."ProductId",
	t1."Quantity"
FROM
	"PurchaseOrderLineItem" t1

