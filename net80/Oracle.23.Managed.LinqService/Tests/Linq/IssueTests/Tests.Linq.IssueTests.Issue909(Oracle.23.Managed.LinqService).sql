﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(p."Value1" NOT IN (1, 2, 3) OR p."Value1" IS NULL)

