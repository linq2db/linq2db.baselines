﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p1."ParentID",
	p1."Value1",
	p2."ParentID",
	p2."Value1"
FROM
	"Parent" p1
		INNER JOIN "Parent" p2 ON p1."Value1" = p2."Value1" AND p1."Value1" IS NOT NULL AND p2."Value1" IS NOT NULL OR p1."Value1" IS NULL AND p2."Value1" IS NULL

