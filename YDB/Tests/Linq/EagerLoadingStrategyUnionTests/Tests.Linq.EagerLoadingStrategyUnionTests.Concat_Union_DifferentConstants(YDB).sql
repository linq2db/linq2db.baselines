-- YDB Ydb
$CTE_1 = 	SELECT
		t1.Id as Id,
		ROW_NUMBER() OVER (ORDER BY t1.Id) as field,
		t1.Label as Label,
		t1.Name as Name
	FROM
		(
			SELECT
				Unwrap(CAST('Small'u AS Text)) as Label,
				c_1.Id as Id,
				c_1.Name as Name
			FROM
				Company c_1
			UNION ALL
			SELECT
				Unwrap(CAST('Large'u AS Text)) as Label,
				c_2.Id as Id,
				c_2.Name as Name
			FROM
				Company c_2
		) t1
;
$CTE_2 = 	SELECT
		d.Id as Detail_Id,
		d.CompanyId as Detail_CompanyId,
		d.Name as Detail_Name,
		d.IsActive as Detail_IsActive,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				$CTE_1 t2
		) kd
			INNER JOIN Department d ON kd.v0Id = d.CompanyId
	ORDER BY
		d.Id
;

SELECT
	t5.Item1 as Item1,
	t5.Item2 as Item2,
	t5.Item3 as Item3,
	t5.Item4 as Item4,
	t5.Item5 as Item5,
	t5.Item6 as Item6,
	t5.Item7 as Item7,
	t5.Item1_1 as Item1_1
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t3.field as Item3,
			t3.Key_1 as Item2,
			t3.Detail_Id as Item4,
			t3.Detail_CompanyId as Item5,
			t3.Detail_Name as Item6,
			t3.Detail_IsActive as Item7,
			CAST(NULL AS Text) as Item1_1
		FROM
			$CTE_2 t3
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t4.field as Item3,
			t4.Id as Item2,
			t4.Id as Item4,
			t4.Id as Item5,
			t4.Label as Item6,
			CAST(NULL AS Bool) as Item7,
			t4.Name as Item1_1
		FROM
			$CTE_1 t4
	) t5
ORDER BY
	t5.Item1,
	t5.Item3,
	t5.Item2

