-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.Name
FROM
	NullableParent m_1
		INNER JOIN NullableChild d ON d.ParentId = m_1.Id
ORDER BY
	d.Id,
	m_1.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	p.Name
FROM
	NullableParent p
ORDER BY
	p.Id

-- ClickHouse.Octonica ClickHouse
WITH CTE_1 AS MATERIALIZED
(
	SELECT
		p.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY p.Id)) as field,
		p.Name as Name
	FROM
		NullableParent p
	ORDER BY
		p.Id
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.ParentId as Detail_ParentId,
		d.Name as Detail_Name,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				CTE_1 t1
		) kd
			INNER JOIN NullableChild d ON d.ParentId = kd.v0Id
	ORDER BY
		d.Id
)
SELECT
	t4.Item1,
	t4.Item2,
	t4.Item3,
	t4.Item4,
	t4.Item5,
	t4.Item6
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t2.field as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_ParentId as Item5,
			t2.Detail_Name as Item6
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t3.field as Item3,
			t3.Id as Item2,
			t3.Id as Item4,
			toInt32(NULL) as Item5,
			t3.Name as Item6
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item3,
	t4.Item2

