﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."Value1"
FROM
	"Parent" x
		LEFT JOIN "Parent" a_Parent ON x."ParentID" = a_Parent."Value1" AND a_Parent."Value1" IS NOT NULL
WHERE
	x."Value1" IS NULL
FETCH NEXT 1 ROWS ONLY

