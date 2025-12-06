-- ClickHouse.Driver ClickHouse

SELECT
	g_1.Id,
	SUM(Coalesce(toInt32(a_Values.Value), 0))
FROM
	Item g_1
		LEFT JOIN ItemValue a_Values ON g_1.Id = a_Values.ItemId AND a_Values.ValueName = 'Value1'
GROUP BY
	g_1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ItemId,
	d.ValueName,
	d.Value
FROM
	Item m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Item t1

