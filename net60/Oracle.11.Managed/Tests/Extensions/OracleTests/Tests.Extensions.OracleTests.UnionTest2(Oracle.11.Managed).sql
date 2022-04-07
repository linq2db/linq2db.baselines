﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ FULL(p@qb_1) FULL(p_1@qb_2) */
	p_2."ParentID"
FROM
	(
		SELECT /*+ QB_NAME(qb_1) */
			p."ParentID",
			p."Value1"
		FROM
			"Child" c_1
				INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"
		UNION
		SELECT /*+ QB_NAME(qb_2) */
			p_1."ParentID",
			p_1."Value1"
		FROM
			"Child" c_2
				INNER JOIN "Parent" p_1 ON c_2."ParentID" = p_1."ParentID"
	) p_2
WHERE
	p_2."ParentID" > 0

