BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	concat(p.LastName, ', ', p.FirstName)
FROM
	Person p
WHERE
	concat(p.LastName, ', ', p.FirstName) = 'Pupkin, John'

