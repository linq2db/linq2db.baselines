-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	"Parent" p
WHERE
	p."ParentID" = c_1."ParentID" AND (p."Value1" NOT IN (1, 2, 3) OR p."Value1" IS NULL)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

