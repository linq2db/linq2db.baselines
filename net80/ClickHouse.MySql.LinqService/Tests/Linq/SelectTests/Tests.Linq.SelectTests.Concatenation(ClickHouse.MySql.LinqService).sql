BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	concat('123', p.FirstName, '456') = '123John456' AND
	p.PersonID = toInt32(1)

