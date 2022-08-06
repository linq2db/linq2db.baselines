BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	_gjd_ri.PersonID,
	_gjd_ri.Diagnosis
FROM
	Person p
		INNER JOIN Patient _gjd_ri ON _gjd_ri.PersonID = p.PersonID
WHERE
	(position(lowerUTF8(p.FirstName), 'test') > toInt32(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID
FROM
	Person p
WHERE
	(position(lowerUTF8(p.FirstName), 'test') > toInt32(0))

