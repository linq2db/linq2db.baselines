-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.`Value` as Value_1
FROM
	Item m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

-- YDB Ydb

SELECT
	x.Id as Id,
	x.Text as Text
FROM
	Item x

