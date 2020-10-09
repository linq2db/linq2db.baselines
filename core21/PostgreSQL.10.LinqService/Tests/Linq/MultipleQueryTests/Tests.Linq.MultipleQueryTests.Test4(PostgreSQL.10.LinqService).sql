BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	key_data_result."Value1", 
	detail."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

