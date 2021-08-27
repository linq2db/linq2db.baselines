﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
			((lj1."ParentID" IS NOT NULL OR lj1."ChildID" IS NOT NULL) AND lj1."ParentID" = -1 OR p."ParentID" = -1 AND lj1."ParentID" IS NULL AND lj1."ChildID" IS NULL) AND
			t1."ParentID" = p."ParentID" AND t1."Value1" = p."Value1"
	)

