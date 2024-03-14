﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			Cast(Floor(CASE
				WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
					THEN Floor(p."MoneyValue")
				ELSE Round(p."MoneyValue", 0)
			END) as Int) as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > 0

