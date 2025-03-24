﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

INSERT INTO xxPerson
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'Steven',
	0,
	'King',
	NULL,
	'M'
)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	xxPerson t1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

BeforeExecute
--  ClickHouse.Octonica ClickHouse

ALTER TABLE
	xxPerson
DELETE WHERE
	PersonID = 0

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	xxPerson t1

