﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	ch1."ParentID",
	ch1."ChildID"
FROM
	"Parent" t1
		INNER JOIN "Child" ch ON t1."ParentID" = ch."ParentID"
		INNER JOIN "Child" ch1 ON ch."ChildID" = ch1."ChildID"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

