-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1,
	"Parent" p
WHERE
	p."ParentID" = t1."ParentID" AND (p."Value1" NOT IN (1, 2, 3) OR p."Value1" IS NULL)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

