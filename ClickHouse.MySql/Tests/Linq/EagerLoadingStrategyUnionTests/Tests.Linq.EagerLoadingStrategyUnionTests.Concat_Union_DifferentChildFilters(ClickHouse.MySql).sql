-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.Id as Id,
		t1.Label as Label,
		toInt64(ROW_NUMBER() OVER (ORDER BY t1.Id, t1.Label)) as field_1,
		t1.Label = 'ActiveOnly' as field_2
	FROM
		(
			SELECT
				toString('ActiveOnly') as Label,
				c_1.Id as Id
			FROM
				Company c_1
			UNION ALL
			SELECT
				toString('All') as Label,
				c_2.Id as Id
			FROM
				Company c_2
		) t1
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.CompanyId as Detail_CompanyId,
		d.Name as Detail_Name,
		d.IsActive as Detail_IsActive,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
		kd.v0Id as Key_Item1,
		kd.v1Label as Key_Item2
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id,
				t2.Label as v1Label
			FROM
				CTE_1 t2
		) kd
			INNER JOIN Department d ON kd.v0Id = d.CompanyId
	WHERE
		d.IsActive
	ORDER BY
		d.Id
),
CTE_3 AS
(
	SELECT
		d_1.Id as Detail_Id,
		d_1.CompanyId as Detail_CompanyId,
		d_1.Name as Detail_Name,
		d_1.IsActive as Detail_IsActive,
		toInt64(ROW_NUMBER() OVER (ORDER BY d_1.Id)) as field_1,
		kd_1.v0Id as Key_Item1,
		kd_1.v1Label as Key_Item2
	FROM
		(
			SELECT DISTINCT
				t3.Id as v0Id,
				t3.Label as v1Label
			FROM
				CTE_1 t3
		) kd_1
			INNER JOIN Department d_1 ON kd_1.v0Id = d_1.CompanyId
	ORDER BY
		d_1.Id
)
SELECT
	t7.Item1,
	t7.Item3,
	t7.Item4,
	t7.Item5,
	t7.Item6,
	t7.Item7,
	t7.Item1_2,
	t7.Item1_1,
	t7.Item2
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t4.field_1 as Item3,
			t4.Key_Item1 as Item1_1,
			t4.Key_Item2 as Item2,
			t4.Detail_Id as Item4,
			t4.Detail_CompanyId as Item5,
			t4.Detail_Name as Item6,
			t4.Detail_IsActive as Item7,
			toString(NULL) as Item1_2
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t5.field_1 as Item3,
			t5.Key_Item1 as Item1_1,
			t5.Key_Item2 as Item2,
			t5.Detail_Id as Item4,
			t5.Detail_CompanyId as Item5,
			t5.Detail_Name as Item6,
			t5.Detail_IsActive as Item7,
			toString(NULL) as Item1_2
		FROM
			CTE_3 t5
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t6.field_1 as Item3,
			t6.Id as Item1_1,
			t6.Label as Item2,
			t6.Id as Item4,
			t6.Id as Item5,
			t6.Label as Item6,
			t6.field_2 as Item7,
			t6.Label as Item1_2
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7.Item1,
	t7.Item3,
	t7.Item1_1,
	t7.Item2

