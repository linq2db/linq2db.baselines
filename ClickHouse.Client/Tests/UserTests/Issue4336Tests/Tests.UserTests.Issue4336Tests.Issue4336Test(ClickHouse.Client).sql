BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Product

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Product
(
	Id         Int32,
	Name       String,
	CategoryId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ProductCategory

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ProductCategory
(
	Id                 Int32,
	Name               String,
	ProductOrderLimit  Int16,
	CustomerOrderLimit Int16,
	PeriodOrderLimit   Int16,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderHeader

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS OrderHeader
(
	Id       Int32,
	PeriodId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderItem

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS OrderItem
(
	Id            Int32,
	OrderHeaderId Int32,
	ProductId     Int32,
	Quantity      Int16,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderPeriod

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS OrderPeriod
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ProductsPerOrderPeriod

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ProductsPerOrderPeriod
(
	Id            Int32,
	OrderPeriodId Int32,
	ProductId     Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.OrderPeriodId,
	r.ProductId,
	r.CategoryId,
	r.MaxCapacity,
	r.Quantity,
	r.MaxCapacity - r.Quantity,
	v2_1.MaxCapacity,
	v2_1.Quantity,
	v2_1.FreeCapacity
FROM
	(
		SELECT
			op.Id as OrderPeriodId,
			vpc.CategoryId as CategoryId,
			pop.ProductId as ProductId,
			COALESCE(pcc.PeriodOrderLimit,0) as MaxCapacity,
			COALESCE(vsp_1.Quantity,0) as Quantity
		FROM
			OrderPeriod op
				INNER JOIN ProductsPerOrderPeriod pop ON op.Id = pop.OrderPeriodId
				LEFT JOIN Product vpc ON vpc.Id = pop.ProductId
				LEFT JOIN ProductCategory pcc ON pcc.Id = vpc.CategoryId
				LEFT JOIN (
					SELECT
						vsp.OrderPeriodId as OrderPeriodId,
						vsp.ProductId as ProductId,
						COALESCE(vsp.Quantity,0) as Quantity
					FROM
						(
							SELECT
								agroup.Id as OrderPeriodId,
								oi.ProductId as ProductId,
								sumOrNull(COALESCE(oi.Quantity,toInt16(0))) as Quantity
							FROM
								OrderPeriod agroup
									LEFT JOIN OrderHeader oh ON agroup.Id = oh.PeriodId
									LEFT JOIN OrderItem oi ON oh.Id = oi.OrderHeaderId
							GROUP BY
								agroup.Id,
								oi.ProductId
						) vsp
				) vsp_1 ON vsp_1.OrderPeriodId = op.Id AND vsp_1.ProductId = pop.ProductId AND vsp_1.ProductId IS NOT NULL
	) r
		LEFT JOIN (
			SELECT
				COALESCE(vpcc.PeriodOrderLimit,0) as MaxCapacity,
				vsopc.Quantity as Quantity,
				COALESCE(vpcc.PeriodOrderLimit,0) - vsopc.Quantity as FreeCapacity,
				v2.Id as Id,
				vpcc.Id as Id_1
			FROM
				OrderPeriod v2
					CROSS JOIN ProductCategory vpcc
					LEFT JOIN (
						SELECT
							agroup_1.Id as OrderPeriodId,
							p.CategoryId as CategoryId,
							sumOrNull(oi_1.Quantity) as Quantity
						FROM
							OrderPeriod agroup_1
								LEFT JOIN OrderHeader oh_1 ON agroup_1.Id = oh_1.PeriodId
								LEFT JOIN OrderItem oi_1 ON oh_1.Id = oi_1.OrderHeaderId
								LEFT JOIN Product p ON p.Id = oi_1.ProductId
						GROUP BY
							agroup_1.Id,
							p.CategoryId
					) vsopc ON vsopc.OrderPeriodId = v2.Id AND vsopc.CategoryId = vpcc.Id AND vsopc.CategoryId IS NOT NULL
		) v2_1 ON v2_1.Id = r.OrderPeriodId AND v2_1.Id_1 = r.CategoryId AND r.CategoryId IS NOT NULL
LIMIT 10

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ProductsPerOrderPeriod

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderPeriod

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderItem

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderHeader

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ProductCategory

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Product

