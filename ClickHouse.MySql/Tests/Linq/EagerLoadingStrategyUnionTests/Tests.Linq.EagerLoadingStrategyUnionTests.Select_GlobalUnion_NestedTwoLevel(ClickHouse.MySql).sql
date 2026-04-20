-- ClickHouse.MySql ClickHouse

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
		d.Id as Detail_Id,
		d.Name as Detail_Name,
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
)
SELECT
	t6.Item1,
	t6.Item2,
	t6.Item3,
	t6.Item4,
	t6.Item5,
	t6.Item6,
	t6.Item7
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t3.Key_1 as Item2,
			t3.field_1 as Item3,
			t3.Detail_Id as Item4,
			t3.Detail_Name as Item5,
			toInt32(NULL) as Item6,
			toInt32(NULL) as Item7
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t4.Key_1 as Item2,
			t4.field_1 as Item3,
			t4.Detail_Id as Item4,
			t4.Detail_Name as Item5,
			t4.Detail_DepartmentId as Item6,
			t4.Detail_Salary as Item7
		FROM
			CTE_3 t4
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t5.Id as Item2,
			t5.field_1 as Item3,
			t5.Id as Item4,
			t5.Name as Item5,
			toInt32(NULL) as Item6,
			toInt32(NULL) as Item7
		FROM
			CTE_1 t5
	) t6
ORDER BY
	t6.Item1,
	t6.Item2,
	t6.Item3

