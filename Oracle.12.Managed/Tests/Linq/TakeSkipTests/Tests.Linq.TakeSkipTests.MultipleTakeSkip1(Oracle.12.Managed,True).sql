﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

