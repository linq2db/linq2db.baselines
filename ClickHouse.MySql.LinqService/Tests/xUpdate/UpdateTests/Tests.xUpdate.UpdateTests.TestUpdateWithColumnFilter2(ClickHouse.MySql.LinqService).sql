﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

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
	'UpdateColumnFilter',
	100,
	'whatever',
	NULL,
	'M'
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilter'
LIMIT 2

BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated'
WHERE
	PersonID = 100

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = 100
LIMIT 2

BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'UpdateColumnFilterUpdated',
	MiddleName = NULL,
	Gender = 'M'
WHERE
	PersonID = 100

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 100
LIMIT 2

