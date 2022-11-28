BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	Trim(concat('  ', p.FirstName, ' ')) = 'John' AND p.PersonID = toInt32(1)

