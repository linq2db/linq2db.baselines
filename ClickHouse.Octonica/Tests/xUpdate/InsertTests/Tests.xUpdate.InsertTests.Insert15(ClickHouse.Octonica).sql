BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

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
	toInt32(0),
	'M',
	'Insert15',
	NULL,
	'Insert15'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	startsWith(_.FirstName, 'Insert15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

