﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		FETCH NEXT :take ROWS ONLY
	) t2

