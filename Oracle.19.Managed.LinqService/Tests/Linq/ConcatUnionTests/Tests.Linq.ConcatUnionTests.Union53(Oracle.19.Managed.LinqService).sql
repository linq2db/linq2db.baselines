﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p1."ParentID",
	NULL
FROM
	"Parent" p1
UNION
SELECT
	NULL,
	p2."Value1"
FROM
	"Parent" p2

