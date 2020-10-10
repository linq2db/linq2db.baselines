BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID"
			ORDER BY
				c_1."ChildID"
			LIMIT :take_1
		) t1 ON 1=1
LIMIT :take

