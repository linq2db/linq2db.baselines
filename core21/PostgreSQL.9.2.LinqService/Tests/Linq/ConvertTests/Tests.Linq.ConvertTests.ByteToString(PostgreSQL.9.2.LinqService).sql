﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(Cast(t."ID" as SmallInt) as VarChar(3)) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	Length(p.c1) > 0

