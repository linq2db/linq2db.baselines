BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.SubId,
	a_SubItem.Id,
	a_SubItem.Value
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass1 t1
	) m_1
		INNER JOIN ChildEntitity d ON m_1.Id = d.ParentId
		LEFT JOIN SubEntitity a_SubItem ON d.SubId = a_SubItem.Id
WHERE
	d.ParentId % 3 = 0
ORDER BY
	d.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.SubId,
	a_SubItem.Id,
	a_SubItem.Value
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass2 t1
	) m_1
		INNER JOIN ChildEntitity d ON m_1.Id = d.ParentId
		LEFT JOIN SubEntitity a_SubItem ON d.SubId = a_SubItem.Id
WHERE
	d.ParentId % 3 = 0
ORDER BY
	d.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass2 t1

