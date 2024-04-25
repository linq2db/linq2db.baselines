﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" p
		LEFT JOIN "Parent" "a_Parent" ON (p."ParentID" = "a_Parent"."ParentID" OR p."ParentID" IS NULL AND "a_Parent"."ParentID" IS NULL)
WHERE
	"a_Parent"."ParentID" = 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON (ch."ParentID" = "a_Parent"."ParentID" OR ch."ParentID" IS NULL AND "a_Parent"."ParentID" IS NULL)

