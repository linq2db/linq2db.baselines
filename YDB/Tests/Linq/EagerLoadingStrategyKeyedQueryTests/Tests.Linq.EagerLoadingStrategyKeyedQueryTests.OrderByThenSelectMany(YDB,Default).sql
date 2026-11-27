-- YDB Ydb
SELECT
	m_1.Id as Id,
	a_Tags.Id as Id_1,
	a_Tags.LogId as LogId,
	a_Tags.Name as Name
FROM
	EagerOrderItem m_1
		INNER JOIN EagerOrderItemLog d ON m_1.Id = d.ItemId
		INNER JOIN EagerOrderItemTag a_Tags ON d.Id = a_Tags.LogId
ORDER BY
	d.Id DESC,
	m_1.Id

-- YDB Ydb
SELECT
	i.`Value` as Value_1,
	i.Id as Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

