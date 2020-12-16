BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 11

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID",
	"keyParam"."GrandChildID"
FROM
	"GrandChild" "keyParam"
WHERE
	("keyParam"."ParentID" = :ParentID AND "keyParam"."ChildID" = :ChildID)

