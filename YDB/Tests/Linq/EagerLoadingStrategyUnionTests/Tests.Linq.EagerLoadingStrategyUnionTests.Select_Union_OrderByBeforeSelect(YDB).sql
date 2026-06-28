-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.Id as Id,
		ROW_NUMBER() OVER (ORDER BY c_1.Id) as field,
		c_1.Name as Name
	FROM
		Company c_1
	ORDER BY
		c_1.Id
;
$CTE_2 = 	SELECT
		d.Id as Detail_DeptId,
		d.Name as Detail_DeptName,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				$CTE_1 t1
		) kd
			INNER JOIN Department d ON d.CompanyId = kd.v0Id
	ORDER BY
		d.Id
;

SELECT
	t4.Item1 as Item1,
	t4.Item2 as Item2,
	t4.Item3 as Item3,
	t4.Item4 as Item4,
	t4.Item5 as Item5
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t2.field as Item3,
			t2.Key_1 as Item2,
			t2.Detail_DeptId as Item4,
			t2.Detail_DeptName as Item5
		FROM
			$CTE_2 t2
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t3.field as Item3,
			t3.Id as Item2,
			t3.Id as Item4,
			t3.Name as Item5
		FROM
			$CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item3,
	t4.Item2

