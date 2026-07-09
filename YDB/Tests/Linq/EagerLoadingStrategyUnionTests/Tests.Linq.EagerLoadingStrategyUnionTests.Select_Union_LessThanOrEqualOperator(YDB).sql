-- YDB Ydb
$CTE_1 = 	SELECT
		d.Id as Id,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field,
		d.Name as Name
	FROM
		Department d
	ORDER BY
		d.Id
;
$CTE_2 = 	SELECT
		d_1.Id as Detail_Id,
		d_1.DepartmentId as Detail_DepartmentId,
		d_1.Name as Detail_Name,
		d_1.Rate as Detail_Rate,
		ROW_NUMBER() OVER (ORDER BY d_1.Id) as field,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				$CTE_1 t1
		) kd
			CROSS JOIN Contractor d_1
	WHERE
		d_1.DepartmentId <= kd.v0Id
	ORDER BY
		d_1.Id
;

SELECT
	t4.Item1 as Item1,
	t4.Item2 as Item2,
	t4.Item3 as Item3,
	t4.Item4 as Item4,
	t4.Item5 as Item5,
	t4.Item6 as Item6,
	t4.Item7 as Item7
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t2.field as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_DepartmentId as Item5,
			t2.Detail_Name as Item6,
			t2.Detail_Rate as Item7
		FROM
			$CTE_2 t2
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t3.field as Item3,
			t3.Id as Item2,
			t3.Id as Item4,
			CAST(NULL AS Int32) as Item5,
			t3.Name as Item6,
			CAST(NULL AS Int32) as Item7
		FROM
			$CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item3,
	t4.Item2

