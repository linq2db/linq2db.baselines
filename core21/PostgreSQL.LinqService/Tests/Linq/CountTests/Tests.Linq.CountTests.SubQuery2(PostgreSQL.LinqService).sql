BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

