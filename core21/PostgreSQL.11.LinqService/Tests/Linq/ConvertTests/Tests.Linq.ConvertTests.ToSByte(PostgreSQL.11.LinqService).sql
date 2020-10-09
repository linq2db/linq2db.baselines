BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p.c1
FROM
	( 
		SELECT 
			Cast(Floor(t."MoneyValue") as SmallInt) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

