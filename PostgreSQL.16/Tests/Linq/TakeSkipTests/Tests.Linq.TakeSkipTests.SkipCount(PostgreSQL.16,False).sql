﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID"
		FROM
			"Child" t1
		OFFSET 2 
	) t2

