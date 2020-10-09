BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	CASE
		WHEN p."Value1" = 1 THEN 10
		ELSE 20
	END = 20

