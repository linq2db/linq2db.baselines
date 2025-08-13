BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.PersonID as Id,
		p.FirstName,
		p.LastName
	FROM
		Person p
	UNION ALL
	SELECT
		r.PersonID as Id,
		r.FirstName as FirstName,
		r.LastName as LastName
	FROM
		cte t1
			INNER JOIN Person r ON t1.FirstName = r.LastName
)
SELECT
	t2.Id,
	t2.FirstName,
	t2.LastName
FROM
	cte t2

