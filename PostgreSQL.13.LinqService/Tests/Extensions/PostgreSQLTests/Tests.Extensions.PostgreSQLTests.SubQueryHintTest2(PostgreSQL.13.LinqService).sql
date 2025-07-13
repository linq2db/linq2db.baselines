BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT /* aa */
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
		) t1 ON p."ParentID" = t1."ParentID"
FOR KEY SHARE
FOR SHARE

