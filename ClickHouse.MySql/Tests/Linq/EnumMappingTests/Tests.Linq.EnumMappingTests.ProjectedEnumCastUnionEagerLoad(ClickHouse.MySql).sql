-- ClickHouse.MySql ClickHouse
WITH CTE_1 AS MATERIALIZED
(
	SELECT
		p.PersonID as ID,
		toInt64(ROW_NUMBER() OVER (ORDER BY p.PersonID)) as field
	FROM
		Person p
	ORDER BY
		p.PersonID
),
CTE_2 AS
(
	SELECT
		d.Gender as Detail_Gender,
		toInt64(0) as field,
		kd.v0ID as Key_1
	FROM
		(
			SELECT DISTINCT
				t1.ID as v0ID
			FROM
				CTE_1 t1
		) kd
			INNER JOIN Person d ON d.PersonID = kd.v0ID
),
CTE_3 AS
(
	SELECT
		d_1.PersonID as Detail_ID,
		d_1.Gender as Detail_Gender,
		toInt64(0) as field,
		kd_1.v0ID as Key_1
	FROM
		(
			SELECT DISTINCT
				t2.ID as v0ID
			FROM
				CTE_1 t2
		) kd_1
			INNER JOIN Person d_1 ON d_1.PersonID = kd_1.v0ID
)
SELECT
	t6.Item1,
	t6.Item2,
	t6.Item3,
	t6.Item4,
	t6.Item5
FROM
	(
		SELECT
			toInt32(0) as Item1,
			t3.field as Item3,
			t3.Key_1 as Item2,
			t3.Detail_Gender as Item4,
			toInt32(NULL) as Item5
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			toInt32(1) as Item1,
			t4.field as Item3,
			t4.Key_1 as Item2,
			t4.Detail_Gender as Item4,
			t4.Detail_ID as Item5
		FROM
			CTE_3 t4
		UNION ALL
		SELECT
			toInt32(2) as Item1,
			t5.field as Item3,
			t5.ID as Item2,
			toString(NULL) as Item4,
			t5.ID as Item5
		FROM
			CTE_1 t5
	) t6
ORDER BY
	t6.Item1,
	t6.Item3,
	t6.Item2

