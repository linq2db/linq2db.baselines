﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	f."ParentID" >= 1 OR f."ParentID" <= 4

