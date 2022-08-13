BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert16')

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	toString(CHAR_LENGTH('Insert16') + toInt32(4)),
	'M'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	startsWith(_.FirstName, 'Insert16')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert16')

