-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			p."ParentID" + :n = c_1."ParentID"
	)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

