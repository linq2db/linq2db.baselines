-- DuckDB

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.LastName = 'Limonadovy'

-- DuckDB

UPDATE
	Person
SET
	FirstName = 'Johnny'
WHERE
	Person.LastName = 'Limonadovy'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'Johnny' AND c_1.LastName = 'Limonadovy'

