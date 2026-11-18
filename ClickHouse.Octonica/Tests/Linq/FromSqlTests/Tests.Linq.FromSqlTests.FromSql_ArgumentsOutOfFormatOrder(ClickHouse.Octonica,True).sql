-- ClickHouse.Octonica ClickHouse
SELECT
	p.PersonID
FROM
	(
		SELECT * FROM Person WHERE (PersonID = 1 OR PersonID = 1) AND LastName <> 'X'
	) p

