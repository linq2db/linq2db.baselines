BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	RANK() OVER(ORDER BY (x.PersonID = 2))
FROM
	Person x

