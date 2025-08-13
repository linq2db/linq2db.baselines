﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Person
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'test_inherited_insert',
	10500,
	'test',
	'test',
	'U'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'test_inherited_insert',
	LastName = 'test',
	MiddleName = 'test',
	Gender = 'U'
WHERE
	PersonID = 10500

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID = 10500

