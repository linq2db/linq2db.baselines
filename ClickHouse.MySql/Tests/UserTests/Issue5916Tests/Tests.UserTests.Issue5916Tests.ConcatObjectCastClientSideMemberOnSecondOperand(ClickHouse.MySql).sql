-- ClickHouse.MySql ClickHouse
SELECT
	toString('c_') as key_1,
	p.PersonID,
	toString('X') as key_2,
	p.FirstName,
	p.LastName,
	toString(NULL) as c1,
	toInt32(NULL) as c2,
	toString(NULL) as c3,
	toString(NULL) as c4
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	toString(NULL) as key_1,
	toInt32(NULL) as PersonID,
	toString(NULL) as key_2,
	toString(NULL) as FirstName,
	toString(NULL) as LastName,
	toString('p_') as c1,
	p_1.PersonID as c2,
	toString('X') as c3,
	p_1.FirstName as c4
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

