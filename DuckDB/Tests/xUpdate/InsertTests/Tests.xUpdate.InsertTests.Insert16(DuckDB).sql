-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%' ESCAPE '~'

-- DuckDB
DECLARE $name  -- Int32
SET     $name = 8
DECLARE $idx  -- Int32
SET     $idx = 4

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	CAST($name + $idx AS VARCHAR),
	'M'
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%' ESCAPE '~'

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%' ESCAPE '~'

