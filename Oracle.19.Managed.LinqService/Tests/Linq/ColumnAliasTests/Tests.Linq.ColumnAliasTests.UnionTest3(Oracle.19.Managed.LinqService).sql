﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p_1.ID
FROM
	(
		SELECT
			p."ParentID" as ID,
			p."Value1"
		FROM
			"Parent" p
		UNION
		SELECT
			t1."ParentID" as ID,
			t1."Value1"
		FROM
			"Parent" t1
	) p_1

