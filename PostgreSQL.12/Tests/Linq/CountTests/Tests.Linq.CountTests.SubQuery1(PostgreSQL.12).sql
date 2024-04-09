﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" = p."ParentID" AND
			"a_Children"."ChildID"::decimal <> 0
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

