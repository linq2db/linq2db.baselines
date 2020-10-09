BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Floor(Power(Cast(p."MoneyValue" as Float), 3)) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

