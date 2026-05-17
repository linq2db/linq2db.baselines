-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.LastName = 'Limonadovy'

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'Johnny'
WHERE
	LastName = 'Limonadovy'

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'Johnny' AND c_1.LastName = 'Limonadovy'

