﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID"
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN x."ParentID" = (
			SELECT
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"a_Parent"."ParentID" = "a_Children"."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID"
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN x."ParentID" = (
			SELECT
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"a_Parent"."ParentID" = "a_Children"."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

