﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = p."Value1" AND
	p."Value1" IS NOT NULL AND
	p."Value1" = 1 AND
	p."Value1" IS NOT NULL

