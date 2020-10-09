BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	key_data_result."Value1", 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID"
ORDER BY
	c_1."ChildID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p

