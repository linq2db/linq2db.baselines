﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			(
				SELECT
					*
				FROM
					"Parent" p1
				WHERE
					p1."Value1" = p."Value1" OR p1."Value1" IS NULL AND p."Value1" IS NULL
				LIMIT 3
			) t1
	)

