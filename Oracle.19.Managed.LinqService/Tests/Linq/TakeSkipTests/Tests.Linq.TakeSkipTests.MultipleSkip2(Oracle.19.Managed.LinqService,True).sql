﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 4

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS

