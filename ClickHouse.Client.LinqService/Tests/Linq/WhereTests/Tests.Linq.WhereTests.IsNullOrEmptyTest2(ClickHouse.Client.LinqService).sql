﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	nm.FirstName
FROM
	Person nm
WHERE
	NOT (nm.FirstName IS NULL OR CHAR_LENGTH(nm.FirstName) = toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

