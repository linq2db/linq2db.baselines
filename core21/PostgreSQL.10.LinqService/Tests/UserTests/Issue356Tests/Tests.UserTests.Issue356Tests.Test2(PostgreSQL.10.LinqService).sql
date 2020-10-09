BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT 
	cp."ParentID", 
	c_1."ChildID"
FROM
	"Parent" cp
		INNER JOIN LATERAL ( 
			SELECT 
				t3."ParentID", 
				t3."ChildID"
			FROM
				( 
					SELECT 
						t1."ParentID", 
						t1."ChildID"
					FROM
						"Child" t1
					UNION
					SELECT 
						t2."ParentID", 
						t2."ChildID"
					FROM
						"Child" t2
				) t3
			ORDER BY
				t3."ParentID"
			LIMIT :take_1
		) c_1 ON 1=1
WHERE
	c_1."ParentID" = cp."ParentID"
ORDER BY
	cp."ParentID"
LIMIT :take

