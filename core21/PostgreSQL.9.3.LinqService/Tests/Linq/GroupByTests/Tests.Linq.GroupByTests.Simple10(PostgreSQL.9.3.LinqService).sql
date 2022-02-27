BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 1

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = :ParentID_1

