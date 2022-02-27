BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Boolean
SET     @p1 = False

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN :p1 = True THEN CASE
					WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 1) AND p."MoneyValue" <> Round(p."MoneyValue", 1)
						THEN Round(p."MoneyValue" / 2, 1) * 2
					ELSE Round(p."MoneyValue", 1)
				END
				ELSE Round(p."MoneyValue", 1)
			END as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0 AND t.c1 <> 7

