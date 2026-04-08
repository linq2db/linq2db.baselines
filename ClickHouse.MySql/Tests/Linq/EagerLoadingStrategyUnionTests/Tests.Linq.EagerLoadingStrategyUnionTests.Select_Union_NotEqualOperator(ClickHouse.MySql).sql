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
			INNER JOIN Employee d_1 ON d_1.DepartmentId <> kd.v0Id
	ORDER BY
		d_1.Id
)
SELECT
	t4.Item1,
	t4.Item2,
	t4.Item3,
	t4.Item4,
	t4.Item5,
	t4.Item6,
	t4.Item7,
	t4.Item1_1,
	t4.Item2_1
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t2.Key_1 as Item2,
			t2.field_1 as Item3,
			t2.Detail_Id as Item4,
			t2.Detail_DepartmentId as Item5,
			t2.Detail_Name as Item6,
			t2.Detail_Salary as Item7,
			toInt32(NULL) as Item1_1,
			toString(NULL) as Item2_1
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			t3.Item1 as Item1,
			t3.v0Id as Item2,
			t3.v1field_1 as Item3,
			toInt32(NULL) as Item4,
			toInt32(NULL) as Item5,
			toString(NULL) as Item6,
			toInt32(NULL) as Item7,
			t3.v0Id as Item1_1,
			t3.v2Name as Item2_1
		FROM
			(
				SELECT
					toInt32(1) as Item1,
					p.Id as v0Id,
					p.field_1 as v1field_1,
					p.Name as v2Name
				FROM
					CTE_1 p
			) t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item2,
	t4.Item3

