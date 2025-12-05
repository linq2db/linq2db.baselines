-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
FOR NO KEY UPDATE OF p, c_1 SKIP LOCKED

