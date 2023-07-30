BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	RTRIM(concat('  ', p.FirstName, ' ')) = '  John' AND
	p.PersonID = toInt32(1)

