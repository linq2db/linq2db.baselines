BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Parent" p
		INNER JOIN ( 
			SELECT DISTINCT 
				c_1."ParentID", 
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 1
		) c_2 ON p."ParentID" = c_2."ParentID"
		INNER JOIN ( 
			SELECT DISTINCT 
				c_3."ParentID", 
				c_3."ChildID"
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" > 1
		) c2 ON p."ParentID" = c2."ParentID"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("ParentID", "ChildID")
AS
(
	SELECT DISTINCT 
		c_1."ParentID", 
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ParentID" > 1
)
SELECT 
	Count(*)
FROM
	"Parent" p
		INNER JOIN "CTE_1" c_2 ON p."ParentID" = c_2."ParentID"
		INNER JOIN "CTE_1" c2 ON p."ParentID" = c2."ParentID"

