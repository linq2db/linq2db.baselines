-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY t1.Id)) as field_1,
		t1.Name as Name
	FROM
		Company t1
	ORDER BY
		t1.Id
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.CompanyId as Detail_CompanyId,
		d.Name as Detail_Name,
		d.IsActive as Detail_IsActive,
		kd.v0Id as Key_1,
		toInt64(0) as field_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				CTE_1 t2
		) kd
			INNER JOIN Department d ON kd.v0Id = d.CompanyId
),
CTE_3 AS
(
	SELECT
		nd.Id as Detail_Id,
		nd.DepartmentId as Detail_DepartmentId,
		nd.Name as Detail_Name,
		nd.Salary as Detail_Salary,
		toInt64(0) as field_1,
		pd.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t3.Detail_Id as v0Detail_Id
			FROM
				CTE_2 t3
		) pd
			INNER JOIN Employee nd ON pd.v0Detail_Id = nd.DepartmentId
)
SELECT
	t7.Item1,
	t7.Item2,
	t7.Item3,
	t7.Item4,
	t7.Item5,
	t7.Item6,
	t7.Item7,
	t7.Item1_1
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t4.field_1 as Item3,
			t4.Key_1 as Item2,
			t4.Detail_Id as Item4,
			t4.Detail_CompanyId as Item5,
			t4.Detail_Name as Item6,
			t4.Detail_IsActive as Item7,
			toInt32(NULL) as Item1_1
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t5.field_1 as Item3,
			t5.Key_1 as Item2,
			t5.Detail_Id as Item4,
			t5.Detail_DepartmentId as Item5,
			t5.Detail_Name as Item6,
			toBool(NULL) as Item7,
			t5.Detail_Salary as Item1_1
		FROM
			CTE_3 t5
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t6.field_1 as Item3,
			t6.Id as Item2,
			t6.Id as Item4,
			toInt32(NULL) as Item5,
			t6.Name as Item6,
			toBool(NULL) as Item7,
			toInt32(NULL) as Item1_1
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7.Item1,
	t7.Item3,
	t7.Item2

