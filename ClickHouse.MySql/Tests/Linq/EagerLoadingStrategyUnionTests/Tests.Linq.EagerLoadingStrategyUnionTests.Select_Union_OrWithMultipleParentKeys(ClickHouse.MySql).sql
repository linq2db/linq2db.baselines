-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		d.Id as Id,
		d.CompanyId as CompanyId,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id, d.CompanyId)) as field_1,
		d.Name as Name
	FROM
		Department d
	ORDER BY
		d.Id
),
CTE_2 AS
(
	SELECT
		d_1.Id as Detail_Id,
		d_1.DepartmentId as Detail_DepartmentId,
		d_1.Name as Detail_Name,
		d_1.Salary as Detail_Salary,
		toInt64(ROW_NUMBER() OVER (ORDER BY d_1.Id)) as field_1,
		kd.v0Id as Key_Item1,
		kd.v1CompanyId as Key_Item2
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id,
				t1.CompanyId as v1CompanyId
			FROM
				CTE_1 t1
		) kd
			INNER JOIN Employee d_1 ON d_1.DepartmentId = kd.v0Id OR d_1.DepartmentId = kd.v1CompanyId
	ORDER BY
		d_1.Id
)
SELECT
	t4.Item1,
	t4.Item3,
	t4.Item4,
	t4.Item5,
	t4.Item6,
	t4.Item7,
	t4.Item1_1,
	t4.Item2
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t2.Key_Item1 as Item1_1,
			t2.Key_Item2 as Item2,
			t2.field_1 as Item3,
			t2.Detail_Id as Item4,
			t2.Detail_DepartmentId as Item5,
			t2.Detail_Name as Item6,
			t2.Detail_Salary as Item7
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t3.Id as Item1_1,
			t3.CompanyId as Item2,
			t3.field_1 as Item3,
			t3.Id as Item4,
			t3.CompanyId as Item5,
			t3.Name as Item6,
			toInt32(NULL) as Item7
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item1_1,
	t4.Item2,
	t4.Item3

