﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID" + 1,
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1
UNION ALL
SELECT
	NULL,
	p_1."ParentID"
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" = 2

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

