BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(((Exp(p."MoneyValue"::Float / 15) - Exp(-(p."MoneyValue"::Float / 15))) / (Exp(p."MoneyValue"::Float / 15) + Exp(-(p."MoneyValue"::Float / 15)))) * 15) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001

