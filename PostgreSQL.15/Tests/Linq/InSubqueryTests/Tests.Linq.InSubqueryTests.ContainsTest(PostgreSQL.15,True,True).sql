﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = 1
		)
			THEN True
		ELSE False
	END

