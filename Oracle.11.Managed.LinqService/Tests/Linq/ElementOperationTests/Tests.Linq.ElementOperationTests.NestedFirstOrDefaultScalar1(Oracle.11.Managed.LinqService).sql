﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" p

