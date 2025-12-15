-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.LastName = 'Limonadovy'

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'Johnny'
WHERE
	LastName = 'Limonadovy'

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'Johnny' AND c_1.LastName = 'Limonadovy'

