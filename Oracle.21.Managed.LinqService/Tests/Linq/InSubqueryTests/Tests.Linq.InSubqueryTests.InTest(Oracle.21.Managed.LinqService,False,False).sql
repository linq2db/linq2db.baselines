﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" IS NOT NULL
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

