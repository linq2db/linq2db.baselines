BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Varchar2(5) -- String
SET     @ID = '2010-'

SELECT
	TO_DATE(:ID || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" p
WHERE
	To_Number(To_Char(TO_DATE(:ID || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD'), 'YYYY')) = 2010

