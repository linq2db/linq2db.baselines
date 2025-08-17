BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

