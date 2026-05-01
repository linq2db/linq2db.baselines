-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY t1.Id)) as field_1,
		t1.Label as Label
	FROM
		(
			SELECT
				toString('First') as Label,
				c_1.Id as Id
			FROM
				Company c_1
			UNION ALL
			SELECT
				toString('Second') as Label,
				c_2.Id as Id
			FROM
				Company c_2
		) t1
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.Name as Detail_Name,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				CTE_1 t2
		) kd
			INNER JOIN Department d ON kd.v0Id = d.CompanyId
	ORDER BY
		d.Id
),
CTE_3 AS
(
	SELECT
		nd.Id as Detail_Id,
		nd.DepartmentId as Detail_DepartmentId,
		nd.Name as Detail_Name,
		nd.Salary as Detail_Salary,
		toInt64(ROW_NUMBER() OVER (ORDER BY nd.Id)) as field_1,
		pd.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t3.Detail_Id as v0Detail_Id
			FROM
				CTE_2 t3
		) pd
			INNER JOIN Employee nd ON pd.v0Detail_Id = nd.DepartmentId
	ORDER BY
		nd.Id
)
SELECT
	t7.Item1,
	t7.Item2,
	t7.Item3,
	t7.Item4,
	t7.Item5,
	t7.Item6,
	t7.Item7
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t4.field_1 as Item3,
			t4.Key_1 as Item2,
			t4.Detail_Id as Item4,
			t4.Detail_Name as Item5,
			toInt32(NULL) as Item6,
			toInt32(NULL) as Item7
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t5.field_1 as Item3,
			t5.Key_1 as Item2,
			t5.Detail_Id as Item4,
			t5.Detail_Name as Item5,
			t5.Detail_DepartmentId as Item6,
			t5.Detail_Salary as Item7
		FROM
			CTE_3 t5
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t6.field_1 as Item3,
			t6.Id as Item2,
			t6.Id as Item4,
			t6.Label as Item5,
			t6.Id as Item6,
			toInt32(NULL) as Item7
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7.Item1,
	t7.Item3,
	t7.Item2

