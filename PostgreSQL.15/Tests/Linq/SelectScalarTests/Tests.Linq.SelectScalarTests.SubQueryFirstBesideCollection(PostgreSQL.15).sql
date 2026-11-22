-- PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
LIMIT :take

-- PostgreSQL.15 PostgreSQL12
SELECT
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		LIMIT 1
	)

