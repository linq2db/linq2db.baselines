﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
					LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
			WHERE
				"a_Parent"."ParentID" = p."ParentID" AND ("a_Parent"."Value1" = p."Value1" OR "a_Parent"."Value1" IS NULL AND p."Value1" IS NULL)
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" p

