BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
WHERE
	p."Value1" <> 0 AND p."Value1" <> 1

