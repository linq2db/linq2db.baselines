BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Order

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Order
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubOrder

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SubOrder
(
	Id      Int32,
	OrderId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubOrderDetail

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SubOrderDetail
(
	Id         Int32,
	SubOrderId Int32,
	Code       Nullable(String),
	Date       DateTime64(7),
	IsActive   Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.SubOrderId,
	d_1.Code,
	d_1.Date,
	d_1.IsActive
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id as Id
				FROM
					(
						SELECT
							x.Id as Id
						FROM
							Order x
						WHERE
							startsWith(x.Name, 'cat')
						ORDER BY
							x.Id
						LIMIT 100, 10
					) t1
			) t2
				INNER JOIN SubOrder d ON t2.Id = d.OrderId
	) m_1
		INNER JOIN SubOrderDetail d_1 ON m_1.Id = d_1.SubOrderId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.OrderId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			(
				SELECT
					x.Id as Id
				FROM
					Order x
				WHERE
					startsWith(x.Name, 'cat')
				ORDER BY
					x.Id
				LIMIT 100, 10
			) t1
	) m_1
		INNER JOIN SubOrder d ON m_1.Id = d.OrderId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Order x
WHERE
	startsWith(x.Name, 'cat')
ORDER BY
	x.Id
LIMIT 100, 10

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubOrderDetail

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubOrder

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Order

