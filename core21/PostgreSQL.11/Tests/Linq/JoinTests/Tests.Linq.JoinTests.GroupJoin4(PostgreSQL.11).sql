BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	key_data_result."Value1", 
	detail."ParentID", 
	detail."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 3
	) key_data_result
		INNER JOIN "Child" detail ON detail."ParentID" = key_data_result."ParentID"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 3

