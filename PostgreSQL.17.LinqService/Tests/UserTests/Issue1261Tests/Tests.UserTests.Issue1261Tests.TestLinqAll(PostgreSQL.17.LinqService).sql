﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."ChildID" = 11 AND x."GrandChildID" = 777)
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."GrandChildID" = 777 AND x."ChildID" = 11)
		)
			THEN True
		ELSE False
	END

