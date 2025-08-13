BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Person
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'擊敗奴隸',
	100,
	'Юникодкин',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = '擊敗奴隸' AND p.LastName = 'Юникодкин'
LIMIT 2

