-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		d.Id as Detail_Id,
		d.Name as Detail_Name,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
		0 as Key_1
	FROM
		Company d
	ORDER BY
		d.Id
),
CTE_2 AS
(
	SELECT
		d_1.Id as Detail_Id,
		d_1.CompanyId as Detail_CompanyId,
		d_1.Name as Detail_Name,
		d_1.IsActive as Detail_IsActive,
		toInt64(ROW_NUMBER() OVER (ORDER BY d_1.Id)) as field_1,
		0 as Key_1
	FROM
		Department d_1
	ORDER BY
		d_1.Id
),
CTE_3 AS
(
	SELECT
		toInt64(0) as field_1,
		(
			SELECT
				COUNT(*)
			FROM
				Company t1
		) as Count_1
	LIMIT 1
)
SELECT
	t5.Item1,
	t5.Item2,
	t5.Item3,
	t5.Item4,
	t5.Item5,
	t5.Item6,
	t5.Item7
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t2.field_1 as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_Name as Item5,
			toInt32(NULL) as Item6,
			toBool(NULL) as Item7
		FROM
			CTE_1 t2
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t3.field_1 as Item3,
			t3.Key_1 as Item2,
			t3.Detail_Id as Item4,
			t3.Detail_Name as Item5,
			t3.Detail_CompanyId as Item6,
			t3.Detail_IsActive as Item7
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t4.field_1 as Item3,
			toInt32(0) as Item2,
			t4.Count_1 as Item4,
			toString(NULL) as Item5,
			toInt32(NULL) as Item6,
			toBool(NULL) as Item7
		FROM
			CTE_3 t4
	) t5
ORDER BY
	t5.Item1,
	t5.Item3,
	t5.Item2

