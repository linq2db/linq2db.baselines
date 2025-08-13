BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	r."OrderPeriodId",
	r."ProductId",
	r."CategoryId",
	r."MaxCapacity",
	r."Quantity",
	r."MaxCapacity" - r."Quantity",
	COALESCE(CAST(vpcc."PeriodOrderLimit" AS Int),0),
	vsopc."Quantity",
	COALESCE(CAST(vpcc."PeriodOrderLimit" AS Int),0) - vsopc."Quantity"
FROM
	(
		SELECT
			op."Id" as "OrderPeriodId",
			vpc."CategoryId",
			pop."ProductId",
			COALESCE(CAST(pcc."PeriodOrderLimit" AS Int),0) as "MaxCapacity",
			COALESCE(COALESCE(vsp.SUM_1,0),0) as "Quantity"
		FROM
			"OrderPeriod" op
				INNER JOIN "ProductsPerOrderPeriod" pop ON op."Id" = pop."OrderPeriodId"
				LEFT JOIN "Product" vpc ON vpc."Id" = pop."ProductId"
				LEFT JOIN "ProductCategory" pcc ON pcc."Id" = vpc."CategoryId"
				LEFT JOIN (
					SELECT
						agroup."Id",
						oi."ProductId",
						SUM(CAST(COALESCE(oi."Quantity",0) AS Int)) as SUM_1
					FROM
						"OrderPeriod" agroup
							LEFT JOIN "OrderHeader" oh ON agroup."Id" = oh."PeriodId"
							LEFT JOIN "OrderItem" oi ON oh."Id" = oi."OrderHeaderId"
					GROUP BY
						agroup."Id",
						oi."ProductId"
				) vsp ON vsp."Id" = op."Id" AND vsp."ProductId" = pop."ProductId"
	) r
		LEFT JOIN "OrderPeriod" v2
			INNER JOIN "ProductCategory" vpcc ON 1=1
			LEFT JOIN (
				SELECT
					agroup_1."Id",
					p."CategoryId",
					SUM(CAST(oi_1."Quantity" AS Int)) as "Quantity"
				FROM
					"OrderPeriod" agroup_1
						LEFT JOIN "OrderHeader" oh_1 ON agroup_1."Id" = oh_1."PeriodId"
						LEFT JOIN "OrderItem" oi_1 ON oh_1."Id" = oi_1."OrderHeaderId"
						LEFT JOIN "Product" p ON p."Id" = oi_1."ProductId"
				GROUP BY
					agroup_1."Id",
					p."CategoryId"
			) vsopc ON vsopc."Id" = v2."Id" AND (vsopc."CategoryId" = vpcc."Id" OR vsopc."CategoryId" IS NULL AND vpcc."Id" IS NULL)
		ON v2."Id" = r."OrderPeriodId" AND vpcc."Id" = r."CategoryId"
WHERE
	ROWNUM <= :take

