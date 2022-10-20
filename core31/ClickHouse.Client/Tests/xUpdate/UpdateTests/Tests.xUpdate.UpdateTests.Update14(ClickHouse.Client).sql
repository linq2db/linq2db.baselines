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
	toInt32(100),
	'whatever',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
UPDATE
	LastName = toString(CHAR_LENGTH('Update14') + toInt32(4))
WHERE
	startsWith(FirstName, 'Update14')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	startsWith(_.FirstName, 'Update14')

