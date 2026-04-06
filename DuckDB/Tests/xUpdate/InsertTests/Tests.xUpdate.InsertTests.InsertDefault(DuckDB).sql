-- DuckDB

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

-- DuckDB

DELETE FROM
	Person p
WHERE
	p.FirstName = 'InsertDefault'

