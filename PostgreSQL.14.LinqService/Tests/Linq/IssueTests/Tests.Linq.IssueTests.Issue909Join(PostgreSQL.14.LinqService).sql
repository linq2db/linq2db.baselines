BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
		CROSS JOIN "Parent" p
WHERE
	p."ParentID" = c_1."ParentID" AND (p."Value1" NOT IN (1, 2, 3) OR p."Value1" IS NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

