﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Sign(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

