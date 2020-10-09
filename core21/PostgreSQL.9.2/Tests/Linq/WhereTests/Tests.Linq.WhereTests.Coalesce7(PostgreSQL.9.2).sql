BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	CASE
		WHEN p."ParentID" = 1 THEN 10
		ELSE 20
	END = 20

