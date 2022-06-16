BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	t1."ParentID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL (
			SELECT
				p."ParentID"
			FROM
				"Child" p
			WHERE
				p_1."ParentID" = p."ParentID"
			LIMIT :take
		) t1 ON 1=1
WHERE
	(
		SELECT
			1
		FROM
			"Child" t2
		WHERE
			p_1."ParentID" = t2."ParentID"
		LIMIT :take_1
	) IS NOT NULL

