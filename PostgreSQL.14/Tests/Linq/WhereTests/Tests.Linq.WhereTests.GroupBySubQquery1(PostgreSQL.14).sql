-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	EXISTS(
		SELECT
			MAX(y."ChildID")
		FROM
			"Child" y
		GROUP BY
			y."ParentID"
		HAVING
			MAX(y."ChildID") = x."ChildID"
	)

