BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	trim(TRAILING ' n' FROM concat('  ', p.FirstName, ' ')) = '  Joh' AND
	p.PersonID = toInt32(1)

