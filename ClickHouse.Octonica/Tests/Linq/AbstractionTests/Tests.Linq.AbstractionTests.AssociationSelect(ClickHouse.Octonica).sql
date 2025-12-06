-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d_1.Id,
	d_1.ParentId,
	d_1.SubId,
	d_1.cond,
	d_1.Value_1
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass1 t1
	) m_1
		INNER JOIN (
			SELECT
				a_SubItem.Id as cond,
				a_SubItem.Value as Value_1,
				d.Id as Id,
				d.ParentId as ParentId,
				d.SubId as SubId,
				ROW_NUMBER() OVER (PARTITION BY d.ParentId ORDER BY d.Id) as rn
			FROM
				ChildEntitity d
					LEFT JOIN SubEntitity a_SubItem ON d.SubId = a_SubItem.Id
			WHERE
				d.ParentId % 3 = 0
		) d_1 ON m_1.Id = d_1.ParentId AND d_1.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass1 t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d_1.Id,
	d_1.ParentId,
	d_1.SubId,
	d_1.cond,
	d_1.Value_1
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass2 t1
	) m_1
		INNER JOIN (
			SELECT
				a_SubItem.Id as cond,
				a_SubItem.Value as Value_1,
				d.Id as Id,
				d.ParentId as ParentId,
				d.SubId as SubId,
				ROW_NUMBER() OVER (PARTITION BY d.ParentId ORDER BY d.Id) as rn
			FROM
				ChildEntitity d
					LEFT JOIN SubEntitity a_SubItem ON d.SubId = a_SubItem.Id
			WHERE
				d.ParentId % 3 = 0
		) d_1 ON m_1.Id = d_1.ParentId AND d_1.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass2 t1

