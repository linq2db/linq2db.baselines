-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 7), 'r', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 5), 'n', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 7), 'o', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 8), 'o', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 7), 'r', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 7), 'o', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(leftUTF8(p.LastName, 8), 'o', toUInt32(3)) - 1
FROM
	Person p
WHERE
	p.PersonID = 2

