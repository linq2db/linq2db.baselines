﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	1 as "c1"
FROM
	"Person" t1
OFFSET :take ROWS FETCH NEXT :take ROWS ONLY 

