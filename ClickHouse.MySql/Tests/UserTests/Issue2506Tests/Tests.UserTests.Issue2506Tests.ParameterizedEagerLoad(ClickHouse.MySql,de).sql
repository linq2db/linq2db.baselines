BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Lang,
	d.Text
FROM
	Item m_1
		INNER JOIN ItemText d ON m_1.Id = d.ItemId
WHERE
	d.Lang = 'de'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	item_1.Name,
	item_1.Id
FROM
	Item item_1

