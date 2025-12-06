-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	pp."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> ROUND(p."MoneyValue", 2)
					THEN ROUND(p."MoneyValue" / 2, 2) * 2
				ELSE ROUND(p."MoneyValue", 2)
			END as "Value_1"
		FROM
			"LinqDataTypes" p
	) pp
WHERE
	pp."Value_1" <> 0 AND pp."Value_1" <> 7

