BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(p.PersonID)
FROM
	Person p

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID > toInt32(4)

