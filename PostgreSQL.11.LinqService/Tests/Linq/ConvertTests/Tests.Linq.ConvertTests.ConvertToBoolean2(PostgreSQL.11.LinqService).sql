﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" <> 4.5 THEN True
				ELSE False
			END as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 = False

