﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		WHERE
			ROWNUM <= :take
	)
FROM SYS.DUAL

