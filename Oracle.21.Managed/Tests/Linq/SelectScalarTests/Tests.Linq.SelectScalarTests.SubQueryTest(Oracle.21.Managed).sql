﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYS.DUAL

