BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lengthUTF8(p.FirstName) = 0
FROM
	Person p
WHERE
	p.PersonID = 1

