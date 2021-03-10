BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
		ELSE 5
	END
FROM
	"LinqDataTypes" p
WHERE
	CASE
		WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
		ELSE 5
	END <> 0

