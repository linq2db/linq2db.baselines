BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Count_1"
FROM
	"Parent" p2
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID" + 1 as "Count_1"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" + 1 < p2."ParentID" + 2 AND c_1."ParentID" + 1 < p2."ParentID" + 2 AND
				p2."ParentID" = c_1."ParentID"
			LIMIT :take
		) t1 ON 1=1
WHERE
	p2."ParentID" + 2 > 0 AND p2."ParentID" + 1 > 0

