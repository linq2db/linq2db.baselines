﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	a_Person.personid,
	a_Person.personname,
	max(f.added)
FROM
	activity649 f
		INNER JOIN person649 a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= makeDateTime(2017, 1, 1, 0, 0, 0)
GROUP BY
	a_Person.personid,
	a_Person.personname

