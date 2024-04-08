﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p_1."ParentID",
	p_1.SUM_1 / 2
FROM
	(
		SELECT
			(
				SELECT
					SUM(a_Children."ParentID")
				FROM
					"Child" a_Children
				WHERE
					p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 0
			) as SUM_1,
			p."ParentID"
		FROM
			"Parent" p
	) p_1
WHERE
	p_1.SUM_1 / 2 > 1

