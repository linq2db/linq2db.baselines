﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."Value1" = 1 AND x."Value1" IS NOT NULL
ORDER BY
	x."ParentID" DESC
FETCH NEXT 1 ROWS ONLY

