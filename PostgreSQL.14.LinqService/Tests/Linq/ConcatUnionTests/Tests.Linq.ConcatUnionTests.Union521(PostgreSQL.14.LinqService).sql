﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			p."ParentID",
			Cast(NULL as Int) as c1
		FROM
			"Parent" p
		UNION
		SELECT
			p2."ParentID",
			p2."Value1" as c1
		FROM
			"Parent" p2
	) p_1

