﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-10-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

