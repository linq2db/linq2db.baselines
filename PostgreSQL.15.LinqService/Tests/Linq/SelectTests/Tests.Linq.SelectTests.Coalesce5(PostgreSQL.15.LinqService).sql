﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Coalesce((
		SELECT
			Max("a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	), p."Value1")
FROM
	"Parent" p

