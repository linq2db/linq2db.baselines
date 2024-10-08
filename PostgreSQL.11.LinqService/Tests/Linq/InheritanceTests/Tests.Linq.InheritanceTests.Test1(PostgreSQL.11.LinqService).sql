BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."Value1" = 1 THEN True
		ELSE False
	END,
	t1."ParentID",
	t1."Value1",
	t1."Value1"
FROM
	"Parent" t1

