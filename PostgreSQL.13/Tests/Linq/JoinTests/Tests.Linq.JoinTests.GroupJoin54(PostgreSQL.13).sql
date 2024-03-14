﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch_1
		WHERE
			t2."ParentID" = ch_1."ParentID"
	),
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" t2
		INNER JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				t2."ParentID" = ch."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	t2."ParentID" = 1

