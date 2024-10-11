BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN p."Value1" = 1 THEN True
		ELSE False
	END,
	p."ParentID",
	p."Value1",
	p."Value1"
FROM
	"Parent" p

