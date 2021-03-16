﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Value1",
	t2."Value1_1"
FROM
	(
		SELECT
			t1."Value1",
			t1."Value1_1"
		FROM
			(
				SELECT
					c_1."ParentID" as "Value1",
					c_1."ParentID" as "Value1_1"
				FROM
					"Child" c_1
				UNION
				SELECT
					c_2."ParentID" as "Value1",
					NULL as "Value1_1"
				FROM
					"Parent" c_2
			) t1
		UNION ALL
		SELECT
			c_3."ParentID" as "Value1",
			c_3."ParentID" as "Value1_1"
		FROM
			"Child" c_3
	) t2

