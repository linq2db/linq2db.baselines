-- ClickHouse.Octonica ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			x.PersonID
		FROM
			(
				SELECT * FROM Person WHERE PersonID = 1 AND LastName <> 'X'
			) x
	)

