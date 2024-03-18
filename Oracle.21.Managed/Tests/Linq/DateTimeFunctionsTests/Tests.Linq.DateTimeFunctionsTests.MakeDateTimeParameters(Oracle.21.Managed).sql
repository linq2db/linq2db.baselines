BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(5) -- String
SET     @p = '2010-'

SELECT
	t_1.ID
FROM
	(
		SELECT
			To_Number(To_Char(TO_DATE(:p || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) as "Year_1",
			t.ID
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."Year_1" = 2010

