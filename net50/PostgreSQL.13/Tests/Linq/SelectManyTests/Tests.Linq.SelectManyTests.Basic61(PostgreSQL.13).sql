BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp
		INNER JOIN "Child" t1 ON (t1."ParentID" > 0 OR t1."ParentID" > 1) AND cp."ParentID" = t1."ParentID"
WHERE
	(t1."ParentID" > -1 OR t1."ParentID" > 2)

