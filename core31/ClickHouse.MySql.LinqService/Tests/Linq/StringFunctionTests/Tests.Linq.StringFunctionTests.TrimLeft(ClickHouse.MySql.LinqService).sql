BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	trim(LEADING ' ' FROM concat('  ', p.FirstName, ' ')) = 'John ' AND
	p.PersonID = toInt32(1)

