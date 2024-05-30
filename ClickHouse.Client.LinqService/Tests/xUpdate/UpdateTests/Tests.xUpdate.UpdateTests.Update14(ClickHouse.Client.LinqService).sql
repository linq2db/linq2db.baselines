BeforeExecute
-- ClickHouse.Client ClickHouse

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
	'Update14',
	100,
	'whatever',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
UPDATE
	LastName = toString(CHAR_LENGTH('Update14') + 4)
WHERE
	startsWith(FirstName, 'Update14')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Update14')

