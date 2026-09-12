-- ClickHouse.MySql ClickHouse
SELECT
	toString('c_') as c1,
	p.PersonID,
	toString('X') as c2,
	p.FirstName,
	p.LastName,
	toString(NULL) as c3,
	toInt32(NULL) as c4,
	toString(NULL) as c5,
	toString(NULL) as c6
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	toString(NULL) as c1,
	toInt32(NULL) as PersonID,
	toString(NULL) as c2,
	toString(NULL) as FirstName,
	toString(NULL) as LastName,
	toString('p_') as c3,
	p_1.PersonID as c4,
	toString('X') as c5,
	p_1.FirstName as c6
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

