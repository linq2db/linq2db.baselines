-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	d_1.Id,
	d_1.ItemId,
	d_1.Log
FROM
	EagerOrderItem m_1
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.ItemId as ItemId,
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id DESC) as rn
			FROM
				EagerOrderItemLog d
		) d_1 ON m_1.Id = d_1.ItemId AND d_1.rn <= 2
ORDER BY
	m_1.Id,
	d_1.Id DESC

-- ClickHouse.MySql ClickHouse
SELECT
	i.Value,
	i.Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

