-- YDB Ydb

SELECT
	g_1.Id as Key_1,
	SUM(Coalesce(CAST(t1.Value_1 AS Int32), 0)) as Value1Sum
FROM
	Item g_1
		LEFT JOIN (
			SELECT
				a_Values.ItemId as ItemId,
				a_Values.`Value` as Value_1
			FROM
				ItemValue a_Values
			WHERE
				a_Values.ValueName = 'Value1'u
		) t1 ON g_1.Id = t1.ItemId
GROUP BY
	g_1.Id

-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.ItemId as ItemId,
	d.ValueName as ValueName,
	d.`Value` as Value_1
FROM
	Item m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Item t1

