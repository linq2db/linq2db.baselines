﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

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
	'UpdateColumnFilterUpdated',
	100,
	'whatever',
	'som middle name',
	'M'
)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT 1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'whatever',
	MiddleName = 'updated name',
	Gender = 'M'
WHERE
	PersonID = 100

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT 1

