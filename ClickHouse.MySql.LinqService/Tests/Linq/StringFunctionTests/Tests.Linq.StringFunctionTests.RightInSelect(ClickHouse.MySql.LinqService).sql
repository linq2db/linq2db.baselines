BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	rightUTF8(p.FirstName, 3)
FROM
	Person p
WHERE
	p.PersonID = 1

