BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Order

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Order
(
	OrderId   Int32,
	OrderType Int32,
	OrderName Nullable(String),

	 PRIMARY KEY (OrderId)
)
ENGINE = MergeTree()
ORDER BY OrderId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Order
(
	OrderId,
	OrderType,
	OrderName
)
VALUES
(toInt32(1),toInt32(0),'Order1')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS OrderDetail

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS OrderDetail
(
	OrderDetailId Int32,
	Title         Nullable(String),
	OrderId       Int32,

	 PRIMARY KEY (OrderDetailId)
)
ENGINE = MergeTree()
ORDER BY OrderDetailId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO OrderDetail
(
	OrderDetailId,
	Title,
	OrderId
)
VALUES
(toInt32(100),'Detail1',toInt32(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Order.OrderId,
	detail.OrderDetailId,
	detail.Title,
	detail.OrderId
FROM
	(
		SELECT DISTINCT
			t1.OrderId as OrderId
		FROM
			(
				SELECT
					o.OrderId as OrderId
				FROM
					Order o
				WHERE
					o.OrderId = toInt32(1)
				LIMIT toInt32(1)
			) t1
	) lw_Order
		INNER JOIN OrderDetail detail ON lw_Order.OrderId = detail.OrderId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.OrderId,
	o.OrderType,
	o.OrderName
FROM
	Order o
WHERE
	o.OrderId = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS OrderDetail

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Order

