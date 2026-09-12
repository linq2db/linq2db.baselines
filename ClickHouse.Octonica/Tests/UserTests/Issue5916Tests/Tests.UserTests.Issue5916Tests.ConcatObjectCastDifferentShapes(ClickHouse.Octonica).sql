-- ClickHouse.Octonica ClickHouse
SELECT
	toString('p_') as c1,
	p.PersonID,
	toString('X') as c2,
	p.FirstName,
	toString(NULL) as c3,
	toInt32(NULL) as c4,
	toString(NULL) as c5,
	toString(NULL) as c6,
	toString(NULL) as c7
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
	toString('c_') as c3,
	p_1.PersonID as c4,
	toString('X') as c5,
	p_1.FirstName as c6,
	p_1.LastName as c7
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

