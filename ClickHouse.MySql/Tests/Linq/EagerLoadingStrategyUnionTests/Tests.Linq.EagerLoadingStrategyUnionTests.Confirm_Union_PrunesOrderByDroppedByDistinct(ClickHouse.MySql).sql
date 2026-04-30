-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		x_1.CompanyId as CompanyId,
		toInt64(ROW_NUMBER() OVER (ORDER BY x_1.CompanyId)) as field_1
	FROM
		(
			SELECT DISTINCT
				x.CompanyId as CompanyId
			FROM
				Department x
		) x_1
),
CTE_2 AS
(
	SELECT
		d.Id as Detail_Id,
		d.CompanyId as Detail_CompanyId,
		d.Name as Detail_Name,
		d.IsActive as Detail_IsActive,
		toInt64(ROW_NUMBER() OVER (ORDER BY d.Id)) as field_1,
		kd.v0CompanyId as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.CompanyId as v0CompanyId
			FROM
				CTE_1 t1
		) kd
			INNER JOIN Department d ON d.CompanyId = kd.v0CompanyId
	ORDER BY
		d.Id
)
SELECT
	t4.Item1,
	t4.Item2,
	t4.Item3,
	t4.Item4,
	t4.Item5,
	t4.Item6,
	t4.Item7
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t2.field_1 as Item3,
			t2.Key_1 as Item2,
			t2.Detail_Id as Item4,
			t2.Detail_CompanyId as Item5,
			t2.Detail_Name as Item6,
			t2.Detail_IsActive as Item7
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t3.field_1 as Item3,
			t3.CompanyId as Item2,
			t3.CompanyId as Item4,
			toInt32(NULL) as Item5,
			toString(NULL) as Item6,
			toBool(NULL) as Item7
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4.Item1,
	t4.Item3,
	t4.Item2

