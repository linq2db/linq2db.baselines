﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	Mdy(10, 1, Year(t.DateTimeValue) + 1)
FROM
	LinqDataTypes t

