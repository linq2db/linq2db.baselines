BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(p.PersonID)
FROM
	Person p

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Person
(
	PersonID,
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	toInt32(100),
	'M',
	'fn',
	'',
	'ln'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p.Gender,
	p.FirstName,
	p.MiddleName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID > toInt32(4)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID > toInt32(4)

