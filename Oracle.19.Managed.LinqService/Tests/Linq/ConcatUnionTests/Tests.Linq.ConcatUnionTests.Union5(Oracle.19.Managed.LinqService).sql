﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	p2."ParentID",
	NULL
FROM
	"Parent" p2

