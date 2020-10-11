BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 0
			ORDER BY
				c_1."ChildID"
			LIMIT :take
		) t1 ON 1=1

