﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	pp."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			pp."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" pp

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	pp."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			pp."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" pp

