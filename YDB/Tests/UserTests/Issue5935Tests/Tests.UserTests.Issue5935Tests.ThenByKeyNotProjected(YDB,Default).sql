-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Log as Log
FROM
	Item m_1
		INNER JOIN ItemLog d ON m_1.Id = d.ItemId
ORDER BY
	d.ItemId,
	d.Id DESC,
	m_1.Id

-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	Item i
ORDER BY
	i.Id

