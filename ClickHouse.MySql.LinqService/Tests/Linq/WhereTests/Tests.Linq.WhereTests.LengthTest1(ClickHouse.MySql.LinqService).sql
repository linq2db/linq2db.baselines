﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	lengthUTF8(nm.MiddleName) <> 0 OR nm.MiddleName IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

