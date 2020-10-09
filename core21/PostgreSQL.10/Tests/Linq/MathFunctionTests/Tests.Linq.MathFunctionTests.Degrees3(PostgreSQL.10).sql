BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Degrees(Cast(Floor(p."MoneyValue") as Int)) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	(Cast(t.c1 as Float) IS NULL OR Cast(t.c1 as Float) <> 0.10000000000000001)

