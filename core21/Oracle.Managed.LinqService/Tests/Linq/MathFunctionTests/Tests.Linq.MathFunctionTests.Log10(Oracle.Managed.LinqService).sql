BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Floor(Log(10D, Cast(p.MoneyValue as Float))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.10000000000000001D

