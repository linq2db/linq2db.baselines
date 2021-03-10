﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 1) AND p."MoneyValue" <> Round(p."MoneyValue", 1)
			THEN Round(p."MoneyValue" / 2, 1) * 2
		ELSE Round(p."MoneyValue", 1)
	END
FROM
	"LinqDataTypes" p
WHERE
	CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 1) AND p."MoneyValue" <> Round(p."MoneyValue", 1)
			THEN Round(p."MoneyValue" / 2, 1) * 2
		ELSE Round(p."MoneyValue", 1)
	END <> 0

