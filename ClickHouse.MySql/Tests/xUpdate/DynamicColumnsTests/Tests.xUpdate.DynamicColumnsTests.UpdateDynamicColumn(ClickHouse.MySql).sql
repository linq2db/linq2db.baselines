BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.LastName = 'Limonadovy'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'Johnny'
WHERE
	LastName = 'Limonadovy'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'Johnny' AND c_1.LastName = 'Limonadovy'

