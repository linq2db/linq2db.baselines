﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 Varchar2(2) -- String
SET     @p_1 = '10'

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar2(4000)) || '-' || :p_1 || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

