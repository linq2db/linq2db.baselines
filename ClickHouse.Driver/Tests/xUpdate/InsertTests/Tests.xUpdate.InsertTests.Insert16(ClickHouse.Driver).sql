-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert16')

-- ClickHouse.Driver ClickHouse

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	toString(12),
	'M'
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Insert16')

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert16')

