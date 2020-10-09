BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p.c1
FROM
	( 
		SELECT 
			Cast(Floor(t."MoneyValue") as BigInt) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

