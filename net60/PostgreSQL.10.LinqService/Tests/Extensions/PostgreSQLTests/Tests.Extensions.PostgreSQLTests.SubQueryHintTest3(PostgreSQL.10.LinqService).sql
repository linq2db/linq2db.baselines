BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN (
			SELECT
				t1."ParentID"
			FROM
				"Child" t1
			FOR UPDATE
					) c_1 ON p."ParentID" = c_1."ParentID"
FOR SHARE
FOR KEY SHARE NOWAIT

