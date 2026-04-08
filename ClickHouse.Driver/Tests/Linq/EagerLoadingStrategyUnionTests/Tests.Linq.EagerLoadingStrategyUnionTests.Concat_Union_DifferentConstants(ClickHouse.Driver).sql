-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.Id as Id,
		toInt64(ROW_NUMBER() OVER (ORDER BY t1.Id)) as field_1,
		t1.Label as Label,
		t1.Name as Name
	FROM
		(
			SELECT
				toString('Small') as Label,
				c_1.Id as Id,
				c_1.Name as Name
			FROM
				Company c_1
			UNION ALL
			SELECT
				toString('Large') as Label,
				c_2.Id as Id,
				c_2.Name as Name
			FROM
				Company c_2
		) t1
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.CompanyId as Detail_CompanyId,
		d.Name as Detail_Name,
		d.IsActive as Detail_IsActive,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
		kd.v0Id as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				CTE_1 t2
		) kd
			INNER JOIN Department d ON kd.v0Id = d.CompanyId
	ORDER BY
		d.Id
)
SELECT
	t5.Item1,
	t5.Item2,
	t5.Item3,
	t5.Item4,
	t5.Item5,
	t5.Item6,
	t5.Item7,
	t5.Item1_1,
	t5.Item2_1,
	t5.Item3_1,
	t5.Item4_1
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t3.Key_1 as Item2,
			t3.field_1 as Item3,
			t3.Detail_Id as Item4,
			t3.Detail_CompanyId as Item5,
			t3.Detail_Name as Item6,
			t3.Detail_IsActive as Item7,
			toString(NULL) as Item1_1,
			toInt32(NULL) as Item2_1,
			toString(NULL) as Item3_1,
			toInt32(NULL) as Item4_1
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			t4.Item1 as Item1,
			t4.v0Id as Item2,
			t4.v1field_1 as Item3,
			toInt32(NULL) as Item4,
			toInt32(NULL) as Item5,
			toString(NULL) as Item6,
			toBool(NULL) as Item7,
			t4.v2Label as Item1_1,
			t4.v0Id as Item2_1,
			t4.v3Name as Item3_1,
			t4.v0Id as Item4_1
		FROM
			(
				SELECT
					toInt32(1) as Item1,
					p.Id as v0Id,
					p.field_1 as v1field_1,
					p.Label as v2Label,
					p.Name as v3Name
				FROM
					CTE_1 p
			) t4
	) t5
ORDER BY
	t5.Item1,
	t5.Item2,
	t5.Item3

