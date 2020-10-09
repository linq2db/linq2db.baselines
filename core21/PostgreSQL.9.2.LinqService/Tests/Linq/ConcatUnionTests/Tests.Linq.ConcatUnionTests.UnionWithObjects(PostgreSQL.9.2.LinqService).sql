BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1.p, 
	t1.p_1, 
	t1.p2, 
	t1.p2_1, 
	c_3."ParentID", 
	c_3."ChildID"
FROM
	( 
		SELECT 
			p."ParentID" as p, 
			p."Value1" as p_1, 
			p2_2."ParentID" as p2, 
			p2_2."Value1" as p2_1
		FROM
			"Parent" p,
			"Parent" p2_2
	) t1
		INNER JOIN "Child" c_3 ON t1.p = c_3."ParentID"
UNION
SELECT 
	t2.p, 
	t2.p_1, 
	t2.p2, 
	t2.p2_1, 
	c_4."ParentID", 
	c_4."ChildID"
FROM
	( 
		SELECT 
			p2_3."ParentID" as p2, 
			p_1."ParentID" as p, 
			p_1."Value1" as p_1, 
			p2_3."Value1" as p2_1
		FROM
			"Parent" p_1,
			"Parent" p2_3
	) t2
		INNER JOIN "Child" c_4 ON t2.p2 = c_4."ParentID"

