﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Child" p
		LEFT JOIN "Parent" a_Parent ON p."ParentID" = a_Parent."ParentID"
WHERE
	a_Parent."ParentID" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID"

