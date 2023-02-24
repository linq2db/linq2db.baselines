BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	rightUTF8(p.FirstName, toInt32(3))
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)

