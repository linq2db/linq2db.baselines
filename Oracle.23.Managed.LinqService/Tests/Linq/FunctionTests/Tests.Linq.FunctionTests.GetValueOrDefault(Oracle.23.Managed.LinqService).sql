﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN p."Value1" IS NOT NULL THEN p."Value1"
		ELSE 0
	END
FROM
	"Parent" p
WHERE
	p."Value1" IS NOT NULL AND p."Value1" > 0

