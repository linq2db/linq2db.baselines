-- ClickHouse.Octonica ClickHouse
SELECT
	toString('p_') as id,
	p.PersonID,
	toString('X') as id_1,
	p.FirstName,
	toString(NULL) as c1,
	toInt32(NULL) as c2,
	toString(NULL) as c3,
	toString(NULL) as c4,
	toString(NULL) as c5
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	toString(NULL) as id,
	toInt32(NULL) as PersonID,
	toString(NULL) as id_1,
	toString(NULL) as FirstName,
	toString('c_') as c1,
	p_1.PersonID as c2,
	toString('X') as c3,
	p_1.FirstName as c4,
	p_1.LastName as c5
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

