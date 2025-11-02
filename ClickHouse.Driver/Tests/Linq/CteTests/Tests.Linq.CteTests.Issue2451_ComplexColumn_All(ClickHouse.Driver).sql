-- ClickHouse.Driver ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.FirstName
	FROM
		Person p
	UNION ALL
	SELECT
		concat(r.FirstName, '/', r.LastName) as FirstName
	FROM
		cte t1
			INNER JOIN Person r ON t1.FirstName = r.LastName
)
SELECT
	t2.FirstName
FROM
	cte t2

