﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p,
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
		FOR KEY SHARE
	) p_1
WHERE
	p_1."ParentID" < -100
FOR SHARE
FOR KEY SHARE

