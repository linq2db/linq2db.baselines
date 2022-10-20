BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(t.PersonID)
FROM
	Person t

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toInt32(0),
	'M',
	'fn',
	NULL,
	'ln'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p2.PersonID,
	p2.Gender,
	p2.FirstName,
	p2.MiddleName,
	p2.LastName
FROM
	Person p2
WHERE
	(p2.PersonID > toInt32(4) OR p2.PersonID = toInt32(0))
LIMIT toInt32(2)

