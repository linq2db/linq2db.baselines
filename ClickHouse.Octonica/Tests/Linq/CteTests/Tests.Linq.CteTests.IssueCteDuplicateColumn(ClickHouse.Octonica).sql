-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		p.Value1 as Value1,
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.Value1 IS NOT NULL
),
CTE_2 AS
(
	SELECT
		t1.ParentID as Id1,
		t1.Value1 as Id2
	FROM
		CTE_1 t1
	UNION ALL
	SELECT
		t2.ParentID as Id1,
		record2.Value1 as Id2
	FROM
		CTE_1 t2
			INNER JOIN CTE_1 record2 ON t2.Value1 = record2.ParentID
)
SELECT
	t3.Id1,
	t3.Id2
FROM
	CTE_2 t3

