﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Floor(((Exp(Cast(p."MoneyValue" as Float) / 15) + Exp(-(Cast(p."MoneyValue" as Float) / 15))) / 2) * 15) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

