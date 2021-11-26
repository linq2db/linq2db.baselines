﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(('2010-' || Cast(p."ID" as Int) || '-1 20:35:44') as TimeStamp) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

