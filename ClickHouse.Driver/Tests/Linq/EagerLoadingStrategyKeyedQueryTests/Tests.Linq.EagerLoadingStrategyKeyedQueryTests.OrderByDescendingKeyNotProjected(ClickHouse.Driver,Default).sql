-- ClickHouse.Driver ClickHouse
SELECT
	m_1.Id,
	d.Log
FROM
	EagerOrderItem m_1
		INNER JOIN EagerOrderItemLog d ON m_1.Id = d.ItemId
ORDER BY
	d.Id DESC,
	m_1.Id

-- ClickHouse.Driver ClickHouse
SELECT
	i.Value,
	i.Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

