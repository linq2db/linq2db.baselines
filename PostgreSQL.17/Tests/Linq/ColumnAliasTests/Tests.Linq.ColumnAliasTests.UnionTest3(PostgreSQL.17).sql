﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p_1."ParentID"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		UNION
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
	) p_1

