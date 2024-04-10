﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			p."ParentID",
			NULL::Int as c1
		FROM
			"Parent" p
		UNION
		SELECT
			p2."ParentID",
			p2."Value1" as c1
		FROM
			"Parent" p2
	) p_1

