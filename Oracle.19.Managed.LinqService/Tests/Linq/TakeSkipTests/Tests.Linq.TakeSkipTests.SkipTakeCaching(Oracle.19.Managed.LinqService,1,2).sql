﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."Value1"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

