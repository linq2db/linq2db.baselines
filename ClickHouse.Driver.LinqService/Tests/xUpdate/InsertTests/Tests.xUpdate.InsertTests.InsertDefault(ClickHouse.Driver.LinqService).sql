BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

