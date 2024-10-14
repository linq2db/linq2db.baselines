BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN p."Value1" = 2 THEN True
		ELSE False
	END,
	p."ParentID",
	p."Value1",
	CASE
		WHEN p."Value1" = 1 THEN True
		ELSE False
	END
FROM
	"Parent" p
WHERE
	p."Value1" = 1 OR p."Value1" = 2

