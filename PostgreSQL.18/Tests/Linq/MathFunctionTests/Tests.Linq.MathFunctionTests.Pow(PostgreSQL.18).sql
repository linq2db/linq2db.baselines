﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Power(p."MoneyValue"::Float, 3)) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0

