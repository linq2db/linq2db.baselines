BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	maxOrNull(t1.PersonID)
FROM
	Person t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
	100,
	'M',
	'fn',
	'',
	'ln'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID > 4
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	PersonID > 4

