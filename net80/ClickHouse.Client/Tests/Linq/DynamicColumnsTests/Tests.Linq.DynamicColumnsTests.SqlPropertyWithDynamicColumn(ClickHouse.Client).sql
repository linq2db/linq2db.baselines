BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.PersonID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	Person x
WHERE
	x.FirstName = 'John'

