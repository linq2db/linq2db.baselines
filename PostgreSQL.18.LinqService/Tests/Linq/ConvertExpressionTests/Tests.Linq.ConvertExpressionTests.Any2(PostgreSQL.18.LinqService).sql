﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Child" c_1
				WHERE
					p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1
			)
	)

