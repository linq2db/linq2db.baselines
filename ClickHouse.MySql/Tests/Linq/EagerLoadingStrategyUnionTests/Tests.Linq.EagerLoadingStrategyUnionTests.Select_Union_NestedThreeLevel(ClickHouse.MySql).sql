-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		c_1.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY c_1.Id)) as field_1,
		c_1.Name as CompanyName
	FROM
		Company c_1
	ORDER BY
		c_1.Id
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.Name as Detail_DeptName,
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
		pd.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Detail_Id as v0Detail_Id
			FROM
				CTE_2 t2
		) pd
			INNER JOIN Employee nd ON nd.DepartmentId = pd.v0Detail_Id
	ORDER BY
		nd.Id
),
CTE_4 AS
(
	SELECT
		nd_1.Id as Detail_Id,
		nd_1.DepartmentId as Detail_DepartmentId,
		nd_1.Name as Detail_Name,
		nd_1.Rate as Detail_Rate,
		toInt64(ROW_NUMBER() OVER (ORDER BY nd_1.Id)) as field_1,
		pd_1.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t3.Detail_Id as v0Detail_Id
			FROM
				CTE_2 t3
		) pd_1
			INNER JOIN Contractor nd_1 ON nd_1.DepartmentId = pd_1.v0Detail_Id
	ORDER BY
		nd_1.Id
)
SELECT
	t8.Item1,
	t8.Item2,
	t8.Item3,
	t8.Item4,
	t8.Item5,
	t8.Item6,
	t8.Item7,
	t8.Item1_1,
	t8.Item2_1
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t4.Key_1 as Item2,
			t4.field_1 as Item3,
			t4.Detail_Id as Item4,
			t4.Detail_DeptName as Item5,
			toInt32(NULL) as Item6,
			toInt32(NULL) as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t5.Key_1 as Item2,
			t5.field_1 as Item3,
			t5.Detail_Id as Item4,
			t5.Detail_Name as Item5,
			t5.Detail_DepartmentId as Item6,
			t5.Detail_Salary as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
		FROM
			CTE_3 t5
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t6.Key_1 as Item2,
			t6.field_1 as Item3,
			t6.Detail_Id as Item4,
			t6.Detail_Name as Item5,
			t6.Detail_DepartmentId as Item6,
			t6.Detail_Rate as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
		FROM
			CTE_4 t6
		UNION ALL
		SELECT
			t7.Item1 as Item1,
			t7.v0Id as Item2,
			t7.v1field_1 as Item3,
			toInt32(NULL) as Item4,
			toString(NULL) as Item5,
			toInt32(NULL) as Item6,
			toInt32(NULL) as Item7,
			t7.v0Id as Item1_1,
			t7.v2CompanyName as Item2_1
		FROM
			(
				SELECT
					toInt32(3) as Item1,
					p.Id as v0Id,
					p.field_1 as v1field_1,
					p.CompanyName as v2CompanyName
				FROM
					CTE_1 p
			) t7
	) t8
ORDER BY
	t8.Item1,
	t8.Item2,
	t8.Item3

