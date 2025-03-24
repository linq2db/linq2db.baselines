﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.PersonID)
FROM
	Person t1

BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO Person
(
	PersonID,
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	0,
	'M',
	'fn',
	NULL,
	'ln'
)

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	p2.PersonID,
	p2.Gender,
	p2.FirstName,
	p2.MiddleName,
	p2.LastName
FROM
	Person p2
WHERE
	p2.PersonID > 4 OR p2.PersonID = 0
LIMIT 2

