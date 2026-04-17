-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		d.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
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
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				CTE_1 t1
		) kd
			INNER JOIN Employee d_1 ON d_1.DepartmentId = kd.v0Id
	ORDER BY
		d_1.Id
),
CTE_3 AS
(
	SELECT
		d_2.Id as Detail_Id,
		d_2.DepartmentId as Detail_DepartmentId,
		d_2.Name as Detail_Name,
		d_2.Rate as Detail_Rate,
		toInt64(ROW_NUMBER() OVER (ORDER BY d_2.Id)) as field_1,
		kd_1.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				CTE_1 t2
		) kd_1
			INNER JOIN Contractor d_2 ON d_2.DepartmentId = kd_1.v0Id
	ORDER BY
		d_2.Id
)
SELECT
	t6.Item1,
	t6.Item2,
	t6.Item3,
	t6.Item4,
	t6.Item5,
	t6.Item6,
	t6.Item7,
	t6.Item1_1,
	t6.Item2_1
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t3.Key_1 as Item2,
			t3.field_1 as Item3,
			t3.Detail_Id as Item4,
			t3.Detail_DepartmentId as Item5,
			t3.Detail_Name as Item6,
			t3.Detail_Salary as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
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
			t4.Detail_Rate as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
		FROM
			CTE_3 t4
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t5.Id as Item2,
			t5.field_1 as Item3,
			toInt32(NULL) as Item4,
			toInt32(NULL) as Item5,
			toString(NULL) as Item6,
			toInt32(NULL) as Item7,
			t5.Id as Item1_1,
			t5.Name as Item2_1
		FROM
			CTE_1 t5
	) t6
ORDER BY
	t6.Item1,
	t6.Item2,
	t6.Item3

