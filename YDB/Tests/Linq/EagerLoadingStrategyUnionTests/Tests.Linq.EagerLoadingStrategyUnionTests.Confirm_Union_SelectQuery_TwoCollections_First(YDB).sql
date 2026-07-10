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

SELECT
	t3.Item1 as Item1,
	t3.Item2 as Item2,
	t3.Item3 as Item3,
	t3.Item4 as Item4,
	t3.Item5 as Item5,
	t3.Item6 as Item6,
	t3.Item7 as Item7
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t1.field as Item3,
			t1.Key_1 as Item2,
			t1.Detail_Id as Item4,
			t1.Detail_Name as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Bool) as Item7
		FROM
			$CTE_1 t1
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t2.field as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_Name as Item5,
			t2.Detail_CompanyId as Item6,
			t2.Detail_IsActive as Item7
		FROM
			$CTE_2 t2
	) t3
ORDER BY
	t3.Item1,
	t3.Item3,
	t3.Item2

