BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT 
	t1."ParentID", 
	t1."ChildID", 
	EXISTS(
		SELECT 
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID" AND c_1."ChildID" > -100
	), 
	(
		SELECT 
			Count(*)
		FROM
			"Child" c_2
		WHERE
			c_2."ParentID" = p."ParentID" AND c_2."ChildID" > -100
	), 
	t2."ParentID", 
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL ( 
			SELECT 
				c_3."ParentID", 
				c_3."ChildID"
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" = p."ParentID" AND c_3."ChildID" > -100 AND
				c_3."ParentID" > 0
			ORDER BY
				c_3."ChildID"
			LIMIT :take
		) t1 ON 1=1
		LEFT JOIN LATERAL ( 
			SELECT 
				c_4."ParentID", 
				c_4."ChildID"
			FROM
				"Child" c_4
			WHERE
				c_4."ParentID" = p."ParentID" AND c_4."ChildID" > -100
			ORDER BY
				c_4."ChildID"
			LIMIT :take_1
		) t2 ON 1=1

