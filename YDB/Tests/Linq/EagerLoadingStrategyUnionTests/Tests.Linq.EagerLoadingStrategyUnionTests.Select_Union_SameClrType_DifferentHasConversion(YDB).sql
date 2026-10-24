-- YDB Ydb
$CTE_1 = 	SELECT
		d.Id as Id,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field
	FROM
		Department d
	ORDER BY
		d.Id
;
$CTE_2 = 	SELECT
		d_1.Id as Detail_Id,
		d_1.DepartmentId as Detail_DepartmentId,
		d_1.`Value` as Detail_Value,
		ROW_NUMBER() OVER (ORDER BY d_1.Id) as field,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.Id as v0Id
			FROM
				$CTE_1 t1
		) kd
			INNER JOIN ConvA d_1 ON d_1.DepartmentId = kd.v0Id
	ORDER BY
		d_1.Id
;
$CTE_3 = 	SELECT
		d_2.Id as Detail_Id,
		d_2.DepartmentId as Detail_DepartmentId,
		d_2.`Value` as Detail_Value,
		ROW_NUMBER() OVER (ORDER BY d_2.Id) as field,
		kd_1.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				$CTE_1 t2
		) kd_1
			INNER JOIN ConvB d_2 ON d_2.DepartmentId = kd_1.v0Id
	ORDER BY
		d_2.Id
;

SELECT
	t6.Item1 as Item1,
	t6.Item2 as Item2,
	t6.Item3 as Item3,
	t6.Item4 as Item4,
	t6.Item5 as Item5,
	t6.Item6 as Item6,
	t6.Item7 as Item7
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t3.field as Item3,
			t3.Key_1 as Item2,
			t3.Detail_Id as Item4,
			t3.Detail_DepartmentId as Item5,
			t3.Detail_Value as Item6,
			CAST(NULL AS Text) as Item7
		FROM
			$CTE_2 t3
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t4.field as Item3,
			t4.Key_1 as Item2,
			t4.Detail_Id as Item4,
			t4.Detail_DepartmentId as Item5,
			CAST(NULL AS Int32) as Item6,
			t4.Detail_Value as Item7
		FROM
			$CTE_3 t4
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Item1,
			t5.field as Item3,
			t5.Id as Item2,
			t5.Id as Item4,
			CAST(NULL AS Int32) as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Text) as Item7
		FROM
			$CTE_1 t5
	) t6
ORDER BY
	t6.Item1,
	t6.Item3,
	t6.Item2

