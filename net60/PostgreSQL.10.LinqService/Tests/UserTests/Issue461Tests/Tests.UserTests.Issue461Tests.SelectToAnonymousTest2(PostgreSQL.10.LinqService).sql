﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentId",
	t1."Id"
FROM
	"Parent" sep
		LEFT JOIN LATERAL (
			SELECT
				l."ParentID" + 1 as "Id",
				l."ParentID" as "ParentId"
			FROM
				"Child" l
			LIMIT 1
		) t1 ON 1=1

