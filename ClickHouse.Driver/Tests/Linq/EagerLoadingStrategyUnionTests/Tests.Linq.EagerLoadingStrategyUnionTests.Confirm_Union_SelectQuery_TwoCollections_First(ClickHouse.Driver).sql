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
)
SELECT
	t3.Item1,
	t3.Item2,
	t3.Item3,
	t3.Item4,
	t3.Item5,
	t3.Item6,
	t3.Item7
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t1.field_1 as Item3,
			t1.Key_1 as Item2,
			t1.Detail_Id as Item4,
			t1.Detail_Name as Item5,
			toInt32(NULL) as Item6,
			toBool(NULL) as Item7
		FROM
			CTE_1 t1
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t2.field_1 as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_Name as Item5,
			t2.Detail_CompanyId as Item6,
			t2.Detail_IsActive as Item7
		FROM
			CTE_2 t2
	) t3
ORDER BY
	t3.Item1,
	t3.Item3,
	t3.Item2

