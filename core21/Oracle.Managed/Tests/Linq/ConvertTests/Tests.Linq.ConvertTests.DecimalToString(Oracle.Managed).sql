BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	p.c1
FROM
	( 
		SELECT 
			Cast(t.MoneyValue as VarChar2(31)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	Length(p.c1) > 0

