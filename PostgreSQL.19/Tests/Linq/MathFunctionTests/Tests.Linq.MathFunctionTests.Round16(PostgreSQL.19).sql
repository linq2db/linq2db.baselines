-- PostgreSQL.19 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, Floor(p."ID"::decimal % 2)::Int + 2) AND p."MoneyValue" <> ROUND(p."MoneyValue", Floor(p."ID"::decimal % 2)::Int + 2)
			THEN ROUND(p."MoneyValue" / 2, Floor(p."ID"::decimal % 2)::Int + 2) * 2
		ELSE ROUND(p."MoneyValue", Floor(p."ID"::decimal % 2)::Int + 2)
	END
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0

-- PostgreSQL.19 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, Floor(p."ID"::decimal % 2)::Int + 1) AND p."MoneyValue" <> ROUND(p."MoneyValue", Floor(p."ID"::decimal % 2)::Int + 1)
			THEN ROUND(p."MoneyValue" / 2, Floor(p."ID"::decimal % 2)::Int + 1) * 2
		ELSE ROUND(p."MoneyValue", Floor(p."ID"::decimal % 2)::Int + 1)
	END
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0

