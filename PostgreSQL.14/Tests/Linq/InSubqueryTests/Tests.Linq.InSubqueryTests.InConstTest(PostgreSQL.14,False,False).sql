-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	1 IN (
		SELECT
			p."Value1"
		FROM
			"Parent" p
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

