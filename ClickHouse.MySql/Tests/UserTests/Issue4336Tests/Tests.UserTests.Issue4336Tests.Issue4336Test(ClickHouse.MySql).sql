﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Product

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductCategory

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderHeader

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS OrderHeader
(
	Id       Int32,
	PeriodId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderItem

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderPeriod

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS OrderPeriod
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductsPerOrderPeriod

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	v1.Id,
	pop.ProductId,
	vpc.CategoryId,
	COALESCE(toInt32(pcc.PeriodOrderLimit),0),
	COALESCE(vsp.Quantity,0),
	COALESCE(toInt32(pcc.PeriodOrderLimit),0) - COALESCE(vsp.Quantity,0),
	v2_1.PeriodOrderLimit,
	v2_1.Quantity,
	v2_1.FreeCapacity
FROM
	OrderPeriod v1
		INNER JOIN ProductsPerOrderPeriod pop ON v1.Id = pop.OrderPeriodId
		LEFT JOIN Product vpc ON vpc.Id = pop.ProductId
		LEFT JOIN ProductCategory pcc ON pcc.Id = vpc.CategoryId
		LEFT JOIN (
			SELECT
				agroup.Id as OrderPeriodId,
				oi.ProductId as ProductId,
				COALESCE(sumOrNull(toInt32(COALESCE(oi.Quantity,toInt16(0)))),0) as Quantity
			FROM
				OrderPeriod agroup
					LEFT JOIN OrderHeader oh ON agroup.Id = oh.PeriodId
					LEFT JOIN OrderItem oi ON oh.Id = oi.OrderHeaderId
			GROUP BY
				agroup.Id,
				oi.ProductId
		) vsp ON vsp.OrderPeriodId = v1.Id AND vsp.ProductId = pop.ProductId
		LEFT JOIN (
			SELECT
				COALESCE(toInt32(vpcc.PeriodOrderLimit),0) as PeriodOrderLimit,
				vsopc.SUM_1 as Quantity,
				COALESCE(toInt32(vpcc.PeriodOrderLimit),0) - vsopc.SUM_1 as FreeCapacity,
				v2.Id as Id,
				vpcc.Id as Id_1
			FROM
				OrderPeriod v2
					CROSS JOIN ProductCategory vpcc
					LEFT JOIN (
						SELECT
							agroup_1.Id as OrderPeriodId,
							p.CategoryId as CategoryId,
							sumOrNull(toInt32(oi_1.Quantity)) as SUM_1
						FROM
							OrderPeriod agroup_1
								LEFT JOIN OrderHeader oh_1 ON agroup_1.Id = oh_1.PeriodId
								LEFT JOIN OrderItem oi_1 ON oh_1.Id = oi_1.OrderHeaderId
								LEFT JOIN Product p ON p.Id = oi_1.ProductId
						GROUP BY
							agroup_1.Id,
							p.CategoryId
					) vsopc ON vsopc.OrderPeriodId = v2.Id AND vsopc.CategoryId = vpcc.Id
		) v2_1 ON v2_1.Id = v1.Id AND v2_1.Id_1 = vpc.CategoryId
LIMIT 10

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductsPerOrderPeriod

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderPeriod

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderItem

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderHeader

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductCategory

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Product

