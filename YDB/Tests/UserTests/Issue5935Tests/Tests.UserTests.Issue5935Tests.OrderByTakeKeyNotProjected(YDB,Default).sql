-- YDB Ydb
SELECT
	m_1.Id as Id,
	d_1.Log as Log
FROM
	Item m_1
		INNER JOIN (
			SELECT
				d.Log as Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id) as rn,
				d.ItemId as ItemId,
				d.Id as Id
			FROM
				ItemLog d
		) d_1 ON m_1.Id = d_1.ItemId
WHERE
	d_1.rn <= 2
ORDER BY
	m_1.Id,
	d_1.Id

-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	Item i
ORDER BY
	i.Id

