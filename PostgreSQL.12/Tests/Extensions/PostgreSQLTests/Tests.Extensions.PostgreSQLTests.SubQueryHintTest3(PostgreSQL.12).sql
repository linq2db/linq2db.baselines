BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
			FOR UPDATE
		) c_2 ON p."ParentID" = c_2."ParentID"
FOR SHARE
FOR KEY SHARE NOWAIT

