BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" as ch
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 0
		) t1 ON p."ParentID" = t1.ch

