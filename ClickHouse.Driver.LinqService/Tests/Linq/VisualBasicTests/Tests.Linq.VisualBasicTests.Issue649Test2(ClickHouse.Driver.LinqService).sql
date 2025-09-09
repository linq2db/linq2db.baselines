﻿BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	a_Person.personid,
	a_Person.personname,
	max(VBIt.added)
FROM
	activity649 VBIt
		INNER JOIN person649 a_Person ON VBIt.personid = a_Person.personid
WHERE
	VBIt.added >= makeDateTime(2017, 1, 1, 0, 0, 0)
GROUP BY
	a_Person.personid,
	a_Person.personname

