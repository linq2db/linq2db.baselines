BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p.c1
FROM
	( 
		SELECT 
			Cast(Floor(t."MoneyValue") as Int) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

