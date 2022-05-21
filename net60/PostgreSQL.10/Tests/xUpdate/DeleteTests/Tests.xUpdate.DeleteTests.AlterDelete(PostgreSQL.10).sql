﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				LEFT JOIN "Child" lj1 ON p."ParentID" = lj1."ParentID"
		WHERE
			((lj1."ParentID" IS NOT NULL OR lj1."ChildID" IS NOT NULL) AND lj1."ParentID" = -1 OR lj1."ParentID" IS NULL AND lj1."ChildID" IS NULL AND p."ParentID" = -1) AND
			t1."ParentID" = p."ParentID" AND (t1."Value1" = p."Value1" OR t1."Value1" IS NULL AND p."Value1" IS NULL)
	)

