-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		c_1.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY c_1.Id)) as field_1,
		c_1.Name as Name
	FROM
		Company c_1
	ORDER BY
		c_1.Id
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Dept_Id,
		d.CompanyId as Detail_Dept_CompanyId,
		d.Name as Detail_Dept_Name,
		d.IsActive as Detail_Dept_IsActive,
		kd.v0Id as Key_1,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				CTE_1 t1
		) kd
			INNER JOIN Department d ON d.CompanyId = kd.v0Id
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
		pd.v0Detail_Dept_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Detail_Dept_Id as v0Detail_Dept_Id
			FROM
				CTE_2 t2
		) pd
			INNER JOIN Employee nd ON nd.DepartmentId = pd.v0Detail_Dept_Id
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
	t7.Item7,
	t7.Item1_1,
	t7.Item2_1,
	t7.Item3_1
FROM
	(
		SELECT
			t5.Item1 as Item1,
			t5.Item2 as Item2,
			t5.Item3 as Item3,
			t5.Item4 as Item4,
			t5.Item5 as Item5,
			t5.Item6 as Item6,
			t5.Item7 as Item7,
			t5.Item1_1 as Item1_1,
			toInt32(NULL) as Item2_1,
			toString(NULL) as Item3_1
		FROM
			(
				SELECT
					toInt32(0) as Item1,
					t3.Key_1 as Item2,
					t3.field_1 as Item3,
					t3.Detail_Dept_Id as Item4,
					t3.Detail_Dept_CompanyId as Item5,
					t3.Detail_Dept_Name as Item6,
					t3.Detail_Dept_IsActive as Item7,
					toInt32(NULL) as Item1_1
				FROM
					CTE_2 t3
				UNION ALL
				SELECT
					toInt32(1) as Item1,
					t4.Key_1 as Item2,
					t4.field_1 as Item3,
					t4.Detail_Id as Item4,
					t4.Detail_DepartmentId as Item5,
					t4.Detail_Name as Item6,
					toBool(NULL) as Item7,
					t4.Detail_Salary as Item1_1
				FROM
					CTE_3 t4
			) t5
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t6.Id as Item2,
			t6.field_1 as Item3,
			toInt32(NULL) as Item4,
			toInt32(NULL) as Item5,
			toString(NULL) as Item6,
			toBool(NULL) as Item7,
			toInt32(NULL) as Item1_1,
			t6.Id as Item2_1,
			t6.Name as Item3_1
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7.Item1,
	t7.Item2,
	t7.Item3

