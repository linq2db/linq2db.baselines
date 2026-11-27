-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.Id,
	d.Lang,
	d.Text
FROM
	EagerFilterItem m_1
		INNER JOIN EagerFilterItemText d ON m_1.Id = d.ItemId
WHERE
	d.Lang = 'de'

-- ClickHouse.Octonica ClickHouse
SELECT
	item_1.Name,
	item_1.Id
FROM
	EagerFilterItem item_1

