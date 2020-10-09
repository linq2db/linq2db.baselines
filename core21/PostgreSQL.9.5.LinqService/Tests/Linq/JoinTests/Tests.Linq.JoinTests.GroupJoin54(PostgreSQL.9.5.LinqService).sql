BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
	), 
	t2."ParentID", 
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL ( 
			SELECT 
				ch."ParentID", 
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			LIMIT :take
		) t2 ON 1=1
WHERE
	p."ParentID" = 1

