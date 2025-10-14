BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		p.Value1 as Id2,
		p.ParentID as Id1
	FROM
		Parent p
	WHERE
		p.Value1 IS NOT NULL
),
CTE_2 AS
(
	SELECT
		t1.Id1,
		t1.Id2
	FROM
		CTE_1 t1
	UNION ALL
	SELECT
		t2.Id1 as Id1,
		record2.Id2 as Id2
	FROM
		CTE_1 t2
			INNER JOIN CTE_1 record2 ON t2.Id2 = record2.Id1
)
SELECT
	t3.Id1,
	t3.Id2
FROM
	CTE_2 t3

