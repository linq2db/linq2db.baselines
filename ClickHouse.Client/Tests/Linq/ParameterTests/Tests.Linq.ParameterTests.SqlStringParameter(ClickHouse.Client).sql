﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = 'John'
LIMIT 2

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = 'Tester'
LIMIT 2

