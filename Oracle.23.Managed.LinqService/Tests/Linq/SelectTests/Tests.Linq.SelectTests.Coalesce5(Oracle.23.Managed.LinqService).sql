﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Nvl((
		SELECT
			MAX(a_Children."ChildID")
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	), p."Value1")
FROM
	"Parent" p

