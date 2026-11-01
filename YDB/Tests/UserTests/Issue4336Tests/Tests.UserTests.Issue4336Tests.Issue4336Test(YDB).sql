-- YDB Ydb
DECLARE $take Int32
SET     $take = 10

SELECT
	r.OrderPeriodId as OrderPeriodId,
	r.ProductId as ProductId,
	r.CategoryId as CategoryId,
	r.MaxCapacity as MaxCapacity,
	r.Quantity as Quantity,
	r.MaxCapacity - r.Quantity as FreeCapacity,
	v2_1.MaxCapacity as MaxCapacity_1,
	v2_1.Quantity as Quantity_1,
	v2_1.FreeCapacity as FreeCapacity_1
FROM
	(
		SELECT
			op.Id as OrderPeriodId,
			vpc_1.CategoryId as CategoryId,
			pop.ProductId as ProductId,
			COALESCE(vpc_1.PeriodOrderLimit,0) as MaxCapacity,
			COALESCE(COALESCE(vsp.Quantity,0),0) as Quantity
		FROM
			OrderPeriod op
				INNER JOIN ProductsPerOrderPeriod pop ON op.Id = pop.OrderPeriodId
				LEFT JOIN (
					SELECT
						vpc.CategoryId as CategoryId,
						pcc.PeriodOrderLimit as PeriodOrderLimit,
						vpc.Id as Id
					FROM
						Product vpc
							LEFT JOIN ProductCategory pcc ON pcc.Id = vpc.CategoryId
				) vpc_1 ON vpc_1.Id = pop.ProductId
				LEFT JOIN (
					SELECT
						agroup.Id as Id,
						oi.ProductId as ProductId,
						SUM(COALESCE(oi.Quantity,0s)) as Quantity
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
				COALESCE(vpcc.PeriodOrderLimit,0) as MaxCapacity,
				vsopc.Quantity as Quantity,
				COALESCE(vpcc.PeriodOrderLimit,0) - Coalesce(vsopc.Quantity, 0) as FreeCapacity,
				v2.Id as Id,
				vpcc.Id as Id_1
			FROM
				OrderPeriod v2
					CROSS JOIN ProductCategory vpcc
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
		) v2_1 ON v2_1.Id = r.OrderPeriodId AND v2_1.Id_1 = r.CategoryId
LIMIT $take

