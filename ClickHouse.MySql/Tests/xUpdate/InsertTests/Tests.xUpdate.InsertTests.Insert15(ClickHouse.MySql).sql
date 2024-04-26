﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	'Insert15',
	NULL,
	'Insert15'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Insert15')

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	startsWith(FirstName, 'Insert15')

