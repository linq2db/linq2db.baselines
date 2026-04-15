-- Informix.DB2 Informix
DECLARE @maxId Integer(4) -- Int32
SET     @maxId = 3

WITH CTE_1 (Id, field_1, Name)
AS
(
	SELECT
		c_1.Id,
		ROW_NUMBER() OVER (ORDER BY c_1.Id),
		c_1.Name
	FROM
		Company c_1
	WHERE
		c_1.Id <= @maxId
	ORDER BY
		c_1.Id
),
CTE_2
(
	Detail_Id,
	Detail_CompanyId,
	Detail_Name,
	Detail_IsActive,
	field_1,
	Key_1
)
AS
(
	SELECT
		d.Id,
		d.CompanyId,
		d.Name,
		d.IsActive,
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
),
CTE_3
(
	Detail_Id,
	Detail_DepartmentId,
	Detail_Name,
	Detail_Rate,
	field_1,
	Key_1
)
AS
(
	SELECT
		d_1.Id,
		d_1.DepartmentId,
		d_1.Name,
		d_1.Rate,
		ROW_NUMBER() OVER (ORDER BY d_1.Id),
		kd_1.v0Id
	FROM
		(
			SELECT DISTINCT
				t2.Id as v0Id
			FROM
				CTE_1 t2
		) kd_1
			INNER JOIN Contractor d_1 ON EXISTS(
				SELECT
					*
				FROM
					Department d_2
				WHERE
					d_2.CompanyId = kd_1.v0Id AND d_2.Id = d_1.DepartmentId
			)
	ORDER BY
		d_1.Id
)
SELECT
	t7.Item1,
	t7.Item2,
	t7.Item3,
	t7.Item4,
	t7.Item5,
	t7.Item6,
	t7.Item7,
	t7.Item1_1,
	t7.Item2_1,
	t7.Item3_1
FROM
	(
		SELECT
			t5.Item1,
			t5.Item2,
			t5.Item3,
			t5.Item4,
			t5.Item5,
			t5.Item6,
			t5.Item7,
			t5.Item1_1,
			NULL::Int as Item2_1,
			NULL::NVarChar(255) as Item3_1
		FROM
			(
				SELECT
					0::Int as Item1,
					t3.Key_1 as Item2,
					t3.field_1 as Item3,
					t3.Detail_Id as Item4,
					t3.Detail_CompanyId as Item5,
					t3.Detail_Name as Item6,
					NVL(t3.Detail_IsActive, NULL) as Item7,
					NULL::Int as Item1_1
				FROM
					CTE_2 t3
				UNION ALL
				SELECT
					1::Int as Item1,
					t4.Key_1 as Item2,
					t4.field_1 as Item3,
					t4.Detail_Id as Item4,
					t4.Detail_DepartmentId as Item5,
					t4.Detail_Name as Item6,
					NULL::BOOLEAN as Item7,
					t4.Detail_Rate as Item1_1
				FROM
					CTE_3 t4
			) t5
		UNION ALL
		SELECT
			2::Int as Item1,
			t6.Id as Item2,
			t6.field_1 as Item3,
			NULL::Int as Item4,
			NULL::Int as Item5,
			NULL::NVarChar(255) as Item6,
			NULL::BOOLEAN as Item7,
			NULL::Int as Item1_1,
			t6.Id as Item2_1,
			t6.Name as Item3_1
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7.Item1,
	t7.Item2,
	t7.Item3

