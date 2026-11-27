-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Log as Log
FROM
	EagerOrderItem m_1
		INNER JOIN EagerOrderItemLog d ON m_1.Id = d.ItemId
ORDER BY
	d.Id,
	m_1.Id

-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

