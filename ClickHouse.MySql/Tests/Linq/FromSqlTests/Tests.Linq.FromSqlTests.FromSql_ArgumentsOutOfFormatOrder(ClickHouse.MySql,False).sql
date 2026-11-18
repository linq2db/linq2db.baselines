-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	(
		SELECT * FROM Person WHERE PersonID = 1 AND LastName <> 'X'
	) p

