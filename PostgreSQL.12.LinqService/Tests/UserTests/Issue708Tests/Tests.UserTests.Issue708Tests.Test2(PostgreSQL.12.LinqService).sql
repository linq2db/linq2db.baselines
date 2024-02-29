﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
WHERE
	t1."ParentID" IN (
		SELECT
			t2."ParentID"
		FROM
			"Parent" t2
		WHERE
			t2."ParentID" = :id
	) AND
	t1."ChildID" >= 0 AND t1."ChildID" <= 100

