BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

