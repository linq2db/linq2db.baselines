﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" x
		WHERE
			x."ParentID" = 1 AND NOT ((x."ChildID" IS NOT NULL AND x."ChildID" = 11) AND (x."GrandChildID" IS NOT NULL AND x."GrandChildID" = 777))
	))

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" x
		WHERE
			x."ParentID" = 1 AND NOT ((x."GrandChildID" IS NOT NULL AND x."GrandChildID" = 777) AND (x."ChildID" IS NOT NULL AND x."ChildID" = 11))
	))

