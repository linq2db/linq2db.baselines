﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(To_Number(To_Char(d."DateTimeValue", 'YYYY')) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" d
WHERE
	To_Number(To_Char(TO_TIMESTAMP(To_Number(To_Char(d."DateTimeValue", 'YYYY')) || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'DD')) > 0

