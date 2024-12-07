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
(1,0,'Order1')

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
(100,'Detail1',1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.OrderId,
	d.OrderDetailId,
	d.Title,
	d.OrderId
FROM
	(
		SELECT
			o.OrderId as OrderId
		FROM
			Order o
		WHERE
			o.OrderId = 1
		LIMIT 1
	) m_1
		INNER JOIN OrderDetail d ON m_1.OrderId = d.OrderId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.OrderType,
	o.OrderId,
	o.OrderName
FROM
	Order o
WHERE
	o.OrderId = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS OrderDetail

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Order

