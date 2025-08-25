BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	lengthUTF8(p.FirstName) = 0
FROM
	Person p
WHERE
	p.PersonID = 1

