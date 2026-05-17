-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	o.OrderType,
	o.OrderId,
	o.OrderName
FROM
	Order o
WHERE
	o.OrderId = 1
LIMIT 1

