-- ClickHouse.Driver ClickHouse
SELECT
	r.OrderPeriodId,
	r.ProductId,
	r.CategoryId,
	r.MaxCapacity,
	r.Quantity,
	r.MaxCapacity - r.Quantity,
	COALESCE(t1.PeriodOrderLimit,0),
	vsopc.Quantity,
	COALESCE(t1.PeriodOrderLimit,0) - Coalesce(vsopc.Quantity, 0)
FROM
	(
		SELECT
			op.Id as OrderPeriodId,
			vpc.CategoryId as CategoryId,
			pop.ProductId as ProductId,
			COALESCE(pcc.PeriodOrderLimit,0) as MaxCapacity,
			COALESCE(COALESCE(vsp.Quantity,0),0) as Quantity
		FROM
			CapacityOrderPeriod op
				INNER JOIN CapacityPeriodProduct pop ON op.Id = pop.OrderPeriodId
				LEFT JOIN CapacityProduct vpc ON vpc.Id = pop.ProductId
				LEFT JOIN CapacityProductCategory pcc ON pcc.Id = vpc.CategoryId
				LEFT JOIN (
					SELECT
						agroup.Id as Id,
						oi.ProductId as ProductId,
						sumOrNull(COALESCE(oi.Quantity,toInt16(0))) as Quantity
					FROM
						CapacityOrderPeriod agroup
							LEFT JOIN CapacityOrderHeader oh ON agroup.Id = oh.PeriodId
							LEFT JOIN CapacityOrderItem oi ON oh.Id = oi.OrderHeaderId
					GROUP BY
						agroup.Id,
						oi.ProductId
				) vsp ON vsp.Id = op.Id AND vsp.ProductId = pop.ProductId
	) r
		LEFT JOIN (
			SELECT
				v2.Id as Id,
				vpcc.Id as Id_1,
				vpcc.PeriodOrderLimit as PeriodOrderLimit
			FROM
				CapacityOrderPeriod v2
					INNER JOIN CapacityProductCategory vpcc ON 1=1
		) t1 ON t1.Id = r.OrderPeriodId AND t1.Id_1 = r.CategoryId
		LEFT JOIN (
			SELECT
				agroup_1.Id as Id,
				p.CategoryId as CategoryId,
				sumOrNull(oi_1.Quantity) as Quantity
			FROM
				CapacityOrderPeriod agroup_1
					LEFT JOIN CapacityOrderHeader oh_1 ON agroup_1.Id = oh_1.PeriodId
					LEFT JOIN CapacityOrderItem oi_1 ON oh_1.Id = oi_1.OrderHeaderId
					LEFT JOIN CapacityProduct p ON p.Id = oi_1.ProductId
			GROUP BY
				agroup_1.Id,
				p.CategoryId
		) vsopc ON vsopc.Id = t1.Id AND (vsopc.CategoryId = t1.Id_1 OR vsopc.CategoryId IS NULL AND t1.Id_1 IS NULL)
LIMIT 10

