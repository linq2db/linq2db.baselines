BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Coalesce((
		SELECT
			"a_Parent"."Value1"
		FROM
			"Child" ch
				LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
		WHERE
			ch."ChildID" = c_1."ChildID"
		LIMIT :take
	), c_1."ChildID")
FROM
	"Child" c_1

