BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID"
		FROM
			"Parent" p
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID" AND c_1."ChildID" > -100 AND c_1."ParentID" > 0
ORDER BY
	c_1."ChildID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	key_data_result."ParentID", 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID"
		FROM
			"Parent" p
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID" AND c_1."ChildID" > -100
ORDER BY
	c_1."ChildID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."ParentID", 
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
	)
FROM
	"Parent" p

