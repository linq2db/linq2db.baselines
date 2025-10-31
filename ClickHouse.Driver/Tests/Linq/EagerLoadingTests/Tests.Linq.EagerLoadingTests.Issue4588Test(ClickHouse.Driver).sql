-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

