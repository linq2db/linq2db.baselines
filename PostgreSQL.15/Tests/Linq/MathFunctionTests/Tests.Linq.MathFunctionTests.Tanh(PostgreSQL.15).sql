BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(((Exp(p."MoneyValue"::Float / 15) - Exp(-(p."MoneyValue"::Float / 15))) / (Exp(p."MoneyValue"::Float / 15) + Exp(-(p."MoneyValue"::Float / 15)))) * 15) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

