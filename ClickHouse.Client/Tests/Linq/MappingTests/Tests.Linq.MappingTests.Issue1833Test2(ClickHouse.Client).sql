BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.PersonID,
	e.FirstName,
	e.LastName,
	concat(e.FirstName, ':', e.LastName)
FROM
	Person e
WHERE
	e.PersonID = 1
LIMIT 2

