-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, 5) AND p."MoneyValue" <> ROUND(p."MoneyValue", 5)
			THEN ROUND(p."MoneyValue" / 2, 5) * 2
		ELSE ROUND(p."MoneyValue", 5)
	END + p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN p."ID" > 2 THEN CASE
			WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, 5) AND p."MoneyValue" <> ROUND(p."MoneyValue", 5)
				THEN ROUND(p."MoneyValue" / 2, 5) * 2
			ELSE ROUND(p."MoneyValue", 5)
		END
		ELSE p."MoneyValue"
	END
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0

