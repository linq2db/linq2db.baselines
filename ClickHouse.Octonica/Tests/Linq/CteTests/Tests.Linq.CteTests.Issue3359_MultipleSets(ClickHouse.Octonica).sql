-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.LastName,
		p.FirstName
	FROM
		Person p
	UNION ALL
	SELECT
		t1.LastName as LastName,
		t1.FirstName as FirstName
	FROM
		cte t1
			INNER JOIN Doctor d ON t1.FirstName = d.Taxonomy
	UNION ALL
	SELECT
		t2.LastName as LastName,
		t2.FirstName as FirstName
	FROM
		cte t2
			INNER JOIN Patient pat ON t2.FirstName = pat.Diagnosis
)
SELECT
	t3.FirstName,
	t3.LastName
FROM
	cte t3

