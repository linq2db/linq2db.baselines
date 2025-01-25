BeforeExecute
-- ClickHouse.Client ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.FirstName,
		p.LastName
	FROM
		Person p
	UNION ALL
	SELECT
		t1.FirstName as FirstName,
		t1.LastName as LastName
	FROM
		cte t1
			INNER JOIN Doctor d ON t1.FirstName = d.Taxonomy
	UNION ALL
	SELECT
		t2.FirstName as FirstName,
		t2.LastName as LastName
	FROM
		cte t2
			INNER JOIN Patient pat ON t2.FirstName = pat.Diagnosis
)
SELECT
	t3.FirstName,
	t3.LastName
FROM
	cte t3

