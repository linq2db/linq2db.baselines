BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(
		SELECT
			Sum(c_1."ChildID")
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1 AND c_1."ParentID" < 10
	)
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_2
		WHERE
			p."ParentID" = c_2."ParentID" AND c_2."ParentID" > 1 AND c_2."ParentID" < 10
	)

