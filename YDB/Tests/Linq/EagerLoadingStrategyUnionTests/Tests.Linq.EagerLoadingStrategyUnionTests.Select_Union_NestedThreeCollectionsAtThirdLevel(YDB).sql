-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.Id as Id,
		ROW_NUMBER() OVER (ORDER BY c_1.Id) as field,
		c_1.Name as CompanyName
	FROM
		Company c_1
	ORDER BY
		c_1.Id
;
$CTE_2 = 	SELECT
		d.Id as Detail_Id,
		d.Name as Detail_DeptName,
		kd.v0Id as Key_1,
		ROW_NUMBER() OVER (ORDER BY d.Id) as field
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
$CTE_3 = 	SELECT
		nd.Id as Detail_Id,
		nd.DepartmentId as Detail_DepartmentId,
		nd.Name as Detail_Name,
		nd.Salary as Detail_Salary,
		ROW_NUMBER() OVER (ORDER BY nd.Id) as field,
		pd.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Detail_Id as v0Detail_Id
			FROM
				$CTE_2 t2
		) pd
			INNER JOIN Employee nd ON nd.DepartmentId = pd.v0Detail_Id
	ORDER BY
		nd.Id
;
$CTE_4 = 	SELECT
		nd_1.Id as Detail_Id,
		nd_1.DepartmentId as Detail_DepartmentId,
		nd_1.Name as Detail_Name,
		nd_1.Rate as Detail_Rate,
		ROW_NUMBER() OVER (ORDER BY nd_1.Id) as field,
		pd_1.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t3.Detail_Id as v0Detail_Id
			FROM
				$CTE_2 t3
		) pd_1
			INNER JOIN Contractor nd_1 ON nd_1.DepartmentId = pd_1.v0Detail_Id
	ORDER BY
		nd_1.Id
;
$CTE_5 = 	SELECT
		nd_2.Id as Detail_Id,
		nd_2.DepartmentId as Detail_DepartmentId,
		nd_2.Name as Detail_Name,
		nd_2.School as Detail_School,
		ROW_NUMBER() OVER (ORDER BY nd_2.Id) as field,
		pd_2.v0Detail_Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t4.Detail_Id as v0Detail_Id
			FROM
				$CTE_2 t4
		) pd_2
			INNER JOIN Intern nd_2 ON nd_2.DepartmentId = pd_2.v0Detail_Id
	ORDER BY
		nd_2.Id
;

SELECT
	t10.Item1 as Item1,
	t10.Item2 as Item2,
	t10.Item3 as Item3,
	t10.Item4 as Item4,
	t10.Item5 as Item5,
	t10.Item6 as Item6,
	t10.Item7 as Item7,
	t10.Item1_1 as Item1_1
FROM
	(
		SELECT
			Unwrap(CAST(0 AS Int32)) as Item1,
			t5.field as Item3,
			t5.Key_1 as Item2,
			t5.Detail_Id as Item4,
			t5.Detail_DeptName as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Int32) as Item7,
			CAST(NULL AS Text) as Item1_1
		FROM
			$CTE_2 t5
		UNION ALL
		SELECT
			Unwrap(CAST(1 AS Int32)) as Item1,
			t6.field as Item3,
			t6.Key_1 as Item2,
			t6.Detail_Id as Item4,
			t6.Detail_Name as Item5,
			t6.Detail_DepartmentId as Item6,
			t6.Detail_Salary as Item7,
			CAST(NULL AS Text) as Item1_1
		FROM
			$CTE_3 t6
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Item1,
			t7.field as Item3,
			t7.Key_1 as Item2,
			t7.Detail_Id as Item4,
			t7.Detail_Name as Item5,
			t7.Detail_DepartmentId as Item6,
			t7.Detail_Rate as Item7,
			CAST(NULL AS Text) as Item1_1
		FROM
			$CTE_4 t7
		UNION ALL
		SELECT
			Unwrap(CAST(3 AS Int32)) as Item1,
			t8.field as Item3,
			t8.Key_1 as Item2,
			t8.Detail_Id as Item4,
			t8.Detail_Name as Item5,
			t8.Detail_DepartmentId as Item6,
			CAST(NULL AS Int32) as Item7,
			t8.Detail_School as Item1_1
		FROM
			$CTE_5 t8
		UNION ALL
		SELECT
			Unwrap(CAST(4 AS Int32)) as Item1,
			t9.field as Item3,
			t9.Id as Item2,
			t9.Id as Item4,
			t9.CompanyName as Item5,
			CAST(NULL AS Int32) as Item6,
			CAST(NULL AS Int32) as Item7,
			CAST(NULL AS Text) as Item1_1
		FROM
			$CTE_1 t9
	) t10
ORDER BY
	t10.Item1,
	t10.Item3,
	t10.Item2

