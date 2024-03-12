﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1
		)
			THEN True
		ELSE False
	END,
	CASE
		WHEN x."ParentID" <> 0 THEN True
		ELSE False
	END
FROM
	"Parent" x
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1
		)
			THEN True
		ELSE False
	END,
	Cast(NULL as Boolean)
FROM
	"Parent" x_1

