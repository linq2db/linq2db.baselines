﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" g_1
		WHERE
			p."ParentID" = g_1."ParentID"
	)
FROM
	"Parent" p

