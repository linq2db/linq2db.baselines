﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

