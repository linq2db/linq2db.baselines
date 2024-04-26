﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			MAX(a_Children."ParentID")
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" < 0
	)
FROM
	"Parent" p

