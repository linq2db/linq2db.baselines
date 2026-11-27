-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	d_1.Log
FROM
	EagerOrderItem m_1
		INNER JOIN (
			SELECT
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id) as rn,
				d.ItemId as ItemId,
				d.Id as Id
			FROM
				EagerOrderItemLog d
		) d_1 ON m_1.Id = d_1.ItemId AND d_1.rn <= 2
ORDER BY
	m_1.Id,
	d_1.Id

-- ClickHouse.MySql ClickHouse
SELECT
	i.Value,
	i.Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

