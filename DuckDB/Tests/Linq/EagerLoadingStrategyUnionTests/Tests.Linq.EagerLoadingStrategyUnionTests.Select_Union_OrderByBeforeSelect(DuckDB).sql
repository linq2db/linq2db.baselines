-- DuckDB

WITH CTE_1 (Id, field_1, Name)
AS
(
	SELECT
		c_1.Id,
		ROW_NUMBER() OVER (ORDER BY c_1.Id),
		c_1.Name
	FROM
		Company c_1
	ORDER BY
		c_1.Id
),
CTE_2
(
	Detail_DeptId,
	Detail_DeptName,
	field_1,
	Key_1
)
AS
(
	SELECT
		d.Id,
		d.Name,
		ROW_NUMBER() OVER (ORDER BY d.Id),
		kd.v0Id
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
)
SELECT
	t4.Item1,
	t4.Item2,
	t4.Item3,
	t4.Item4,
	t4.Item5
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as Item1,
			t2.field_1 as Item3,
			t2.Key_1 as Item2,
			t2.Detail_DeptId as Item4,
			t2.Detail_DeptName as Item5
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as Item1,
			t3.field_1 as Item3,
			t3.Id as Item2,
			t3.Id as Item4,
			t3.Name as Item5
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item3,
	t4.Item2

