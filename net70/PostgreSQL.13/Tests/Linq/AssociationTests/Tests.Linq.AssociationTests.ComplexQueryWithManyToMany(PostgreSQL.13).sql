﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3
DECLARE @take Integer -- Int32
SET     @take = 1

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
				INNER JOIN "Child" c_1
					INNER JOIN "GrandChild" "a_Child" ON c_1."ChildID" = "a_Child"."ChildID"
				ON li."ParentID" = c_1."ParentID"
				LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = :id1 AND
			li."ParentID" = :Value
	)
ORDER BY
	t1."ChildID"
LIMIT :take

