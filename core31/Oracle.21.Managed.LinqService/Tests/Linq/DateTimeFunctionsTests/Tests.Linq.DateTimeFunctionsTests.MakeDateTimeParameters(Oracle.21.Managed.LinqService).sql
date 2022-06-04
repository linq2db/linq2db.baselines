﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p_1 Varchar2(5) -- String
SET     @p_1 = '2010-'

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_DATE(:p_1 || Cast(p.ID as VarChar2(11)) || '-1', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'YYYY')) = 2010

