﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 01:00:00

SELECT
	x.ID
FROM
	"AllTypes" x
WHERE
	CURRENT_TIMESTAMP > x."datetime2DataType" + :p

