BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	key_data_result."Value1", 
	gjd_ch."ParentID", 
	gjd_ch."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) key_data_result
		INNER JOIN "Child" gjd_ch ON gjd_ch."ParentID" = key_data_result."ParentID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	key_data_result."Value1", 
	ch."ParentID", 
	ch."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) key_data_result
		INNER JOIN "Child" ch ON ch."ParentID" = key_data_result."ParentID"
ORDER BY
	ch."ChildID" DESC

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

