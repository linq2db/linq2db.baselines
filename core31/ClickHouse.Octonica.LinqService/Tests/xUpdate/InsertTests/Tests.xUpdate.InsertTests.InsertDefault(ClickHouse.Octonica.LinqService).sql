BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertDefault'

