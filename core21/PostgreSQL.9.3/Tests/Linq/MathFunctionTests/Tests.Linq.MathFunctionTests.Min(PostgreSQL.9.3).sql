BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
		ELSE 5
	END
FROM
	"LinqDataTypes" p
WHERE
	(CASE
		WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
		ELSE 5
	END <> 0 OR CASE
		WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
		ELSE 5
	END IS NULL)

