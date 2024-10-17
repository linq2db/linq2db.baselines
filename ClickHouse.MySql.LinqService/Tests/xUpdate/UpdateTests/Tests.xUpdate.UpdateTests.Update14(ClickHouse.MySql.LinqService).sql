BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	LastName = toString(CHAR_LENGTH('Update14') + 4)
WHERE
	startsWith(FirstName, 'Update14') = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Update14') = true

