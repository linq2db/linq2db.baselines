﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	d.c1
FROM
	(
		SELECT
			t."DateTimeValue" as c1
		FROM
			"LinqDataTypes" t
	) d
WHERE
	Cast(Floor(Extract(day from d.c1)) as int) > 0

