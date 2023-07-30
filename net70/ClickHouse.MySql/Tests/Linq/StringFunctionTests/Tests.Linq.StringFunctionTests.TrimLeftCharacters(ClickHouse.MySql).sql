BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	trim(LEADING ' J' FROM concat('  ', p.FirstName, ' ')) = 'ohn ' AND
	p.PersonID = toInt32(1)

