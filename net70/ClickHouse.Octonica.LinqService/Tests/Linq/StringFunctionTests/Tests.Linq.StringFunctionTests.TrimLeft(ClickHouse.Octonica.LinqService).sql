BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	LTRIM(concat('  ', p.FirstName, ' ')) = 'John ' AND
	p.PersonID = toInt32(1)

