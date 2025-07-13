BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Person
(
	FirstName,
	MiddleName,
	LastName,
	Gender
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

