BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	r.OrderPeriodId,
	r.ProductId,
	r.CategoryId,
	r.MaxCapacity,
	r.Quantity,
	r.MaxCapacity - r.Quantity,
	COALESCE(t1.PeriodOrderLimit,0),
	t1.Quantity,
	COALESCE(t1.PeriodOrderLimit,0) - t1.Quantity
FROM
	(
		SELECT
			op.Id as OrderPeriodId,
			vpc.CategoryId as CategoryId,
			pop.ProductId as ProductId,
			COALESCE(pcc.PeriodOrderLimit,0) as MaxCapacity,
			COALESCE(COALESCE(vsp.Quantity,0),0) as Quantity
		FROM
			OrderPeriod op
				INNER JOIN ProductsPerOrderPeriod pop ON op.Id = pop.OrderPeriodId
				LEFT JOIN Product vpc ON vpc.Id = pop.ProductId
				LEFT JOIN ProductCategory pcc ON pcc.Id = vpc.CategoryId
				LEFT JOIN (
					SELECT
						agroup.Id as Id,
						oi.ProductId as ProductId,
						SUM(COALESCE(oi.Quantity,toInt16(0))) as Quantity
					FROM
						OrderPeriod agroup
							LEFT JOIN OrderHeader oh ON agroup.Id = oh.PeriodId
							LEFT JOIN OrderItem oi ON oh.Id = oi.OrderHeaderId
					GROUP BY
						agroup.Id,
						oi.ProductId
				) vsp ON vsp.Id = op.Id AND vsp.ProductId = pop.ProductId
	) r
		LEFT JOIN (
			SELECT
				v2.Id as Id,
				vpcc.Id as Id_1,
				vpcc.PeriodOrderLimit as PeriodOrderLimit,
				vsopc.Quantity as Quantity
			FROM
				OrderPeriod v2
					INNER JOIN ProductCategory vpcc ON 1=1
					LEFT JOIN (
						SELECT
							agroup_1.Id as Id,
							p.CategoryId as CategoryId,
							SUM(oi_1.Quantity) as Quantity
						FROM
							OrderPeriod agroup_1
								LEFT JOIN OrderHeader oh_1 ON agroup_1.Id = oh_1.PeriodId
								LEFT JOIN OrderItem oi_1 ON oh_1.Id = oi_1.OrderHeaderId
								LEFT JOIN Product p ON p.Id = oi_1.ProductId
						GROUP BY
							agroup_1.Id,
							p.CategoryId
					) vsopc ON vsopc.Id = v2.Id AND vsopc.CategoryId = vpcc.Id
		) t1 ON t1.Id = r.OrderPeriodId AND t1.Id_1 = r.CategoryId
LIMIT 10

