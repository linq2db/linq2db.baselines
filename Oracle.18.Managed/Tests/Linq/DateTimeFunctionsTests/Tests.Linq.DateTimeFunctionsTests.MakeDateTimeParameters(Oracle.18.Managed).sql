BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(5) -- String
SET     @p = '2010-'

SELECT
	t_1."c1"
FROM
	(
		SELECT
			To_Number(To_Char(TO_DATE(:p || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) as "Year_1",
			TO_DATE(:p || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."Year_1" = 2010)

