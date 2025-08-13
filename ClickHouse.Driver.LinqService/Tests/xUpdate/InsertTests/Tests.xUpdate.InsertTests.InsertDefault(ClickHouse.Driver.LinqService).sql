BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

