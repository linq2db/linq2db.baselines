BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			t3.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t2.Id as Id
				FROM
					(
						SELECT
							t1.Id as Id
						FROM
							(
								SELECT
									x.Id as Id
								FROM
									Order x
								WHERE
									startsWith(x.Name, 'cat')
							) t1
						ORDER BY
							t1.Id
						LIMIT 100, 10
					) t2
			) t3
				INNER JOIN SubOrder d ON t3.Id = d.OrderId
	) m_1
		INNER JOIN SubOrderDetail d_1 ON m_1.Id = d_1.SubOrderId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.OrderId
FROM
	(
		SELECT DISTINCT
			t2.Id as Id
		FROM
			(
				SELECT
					t1.Id as Id
				FROM
					(
						SELECT
							x.Id as Id
						FROM
							Order x
						WHERE
							startsWith(x.Name, 'cat')
					) t1
				ORDER BY
					t1.Id
				LIMIT 100, 10
			) t2
	) m_1
		INNER JOIN SubOrder d ON m_1.Id = d.OrderId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	(
		SELECT
			x.Id as Id,
			x.Name as Name
		FROM
			Order x
		WHERE
			startsWith(x.Name, 'cat')
	) t1
ORDER BY
	t1.Id
LIMIT 100, 10

