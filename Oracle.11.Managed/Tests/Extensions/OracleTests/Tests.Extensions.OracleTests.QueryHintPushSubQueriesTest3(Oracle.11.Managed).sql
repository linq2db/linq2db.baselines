﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT /*+ QB_NAME(qb) PUSH_SUBQ(@qb) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

