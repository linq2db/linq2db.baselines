BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" > 5.1 THEN p."MoneyValue"
		ELSE 5.1
	END
FROM
	"LinqDataTypes" p
WHERE
	CASE
		WHEN p."MoneyValue" > 5.1 THEN p."MoneyValue"
		ELSE 5.1
	END <> 0

