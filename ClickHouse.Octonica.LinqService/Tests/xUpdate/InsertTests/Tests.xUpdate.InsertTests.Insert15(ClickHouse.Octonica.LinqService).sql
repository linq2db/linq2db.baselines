BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

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
	0,
	'M',
	'Insert15',
	NULL,
	'Insert15'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Insert15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

