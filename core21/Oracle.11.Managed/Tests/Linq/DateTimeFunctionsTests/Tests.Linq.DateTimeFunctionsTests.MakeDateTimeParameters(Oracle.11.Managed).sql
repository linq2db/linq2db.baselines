BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Varchar2(5) -- String
SET     @ID = '2010-'

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_DATE(:ID || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'YYYY')) = 2010

