-- YDB Ydb
$CTE_1 = 	SELECT
		d.Id as Detail_Id,
		d.Name as Detail_Name,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field,
		0 as Key_1
	FROM
		Company d
	ORDER BY
		d.Id
;
$CTE_2 = 	SELECT
		d_1.Id as Detail_Id,
		d_1.CompanyId as Detail_CompanyId,
		d_1.Name as Detail_Name,
		d_1.IsActive as Detail_IsActive,
		ROW_NUMBER() OVER (ORDER BY d_1.Id) as field,
		0 as Key_1
	FROM
		Department d_1
	ORDER BY
		d_1.Id
;
$CTE_3 = 	SELECT
		COUNT(*) as Count_1
	FROM
		Company t1
;
$CTE_4 = 	SELECT
		0l as field,
		$CTE_3 as Count_1
	LIMIT 1
;

SELECT
	t5.Item1 as Item1,
	t5.Item2 as Item2,
	t5.Item3 as Item3,
	t5.Item4 as Item4,
	t5.Item5 as Item5,
	t5.Item6 as Item6,
	t5.Item7 as Item7
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t2.field as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_Name as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Bool) as Item7
		FROM
			$CTE_1 t2
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t3.field as Item3,
			t3.Key_1 as Item2,
			t3.Detail_Id as Item4,
			t3.Detail_Name as Item5,
			t3.Detail_CompanyId as Item6,
			t3.Detail_IsActive as Item7
		FROM
			$CTE_2 t3
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Item1,
			t4.field as Item3,
			Unwrap(CAST(0 AS Int32)) as Item2,
			t4.Count_1 as Item4,
			CAST(NULL AS Text) as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Bool) as Item7
		FROM
			$CTE_4 t4
	) t5
ORDER BY
	t5.Item1,
	t5.Item3,
	t5.Item2

