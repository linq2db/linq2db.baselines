﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Degrees(Cast(p."MoneyValue" as Float))
FROM
	"LinqDataTypes" p
WHERE
	(Degrees(Cast(p."MoneyValue" as Float)) <> 0.10000000000000001 OR Degrees(Cast(p."MoneyValue" as Float)) IS NULL)

