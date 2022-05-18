﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	x5."ParentID",
	x5."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" x5
		LEFT JOIN "Child" y2 ON x5."ParentID" = y2."ParentID" AND x5."Value1" = y2."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				y1."ParentID",
				y1."ChildID"
			FROM
				"Child" y1
			WHERE
				y1."ParentID" = x5."ParentID" AND y1."ParentID" = x5."Value1"
			LIMIT 1
		) t1 ON 1=1
WHERE
	x5."ParentID" = 1 AND x5."Value1" IS NOT NULL
ORDER BY
	x5."ParentID"

