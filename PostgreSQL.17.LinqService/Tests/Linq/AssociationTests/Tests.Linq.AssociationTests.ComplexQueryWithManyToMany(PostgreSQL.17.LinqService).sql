﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @id1 Integer -- Int32
SET     @id1 = 3

SELECT
	t1."ChildID"
FROM
	"GrandChild" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" li
				INNER JOIN "Child" "a_ManyToMany" ON li."ParentID" = "a_ManyToMany"."ParentID"
				INNER JOIN "GrandChild" "a_Child" ON "a_ManyToMany"."ChildID" = "a_Child"."ChildID"
				LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		WHERE
			li."ParentID" = :id AND
			"a_Parent"."ParentID" IS NOT NULL AND
			"a_Parent"."ParentID" = :id1 AND
			"a_Parent"."ParentID" IS NOT NULL
	)
ORDER BY
	t1."ChildID"
LIMIT 1

