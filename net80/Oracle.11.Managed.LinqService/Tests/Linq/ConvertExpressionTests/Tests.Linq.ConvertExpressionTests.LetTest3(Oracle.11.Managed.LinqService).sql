﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			p."ParentID"
		FROM
			"Child" p
		WHERE
			ROWNUM <= :take
	)
FROM
	"Parent" p_1

