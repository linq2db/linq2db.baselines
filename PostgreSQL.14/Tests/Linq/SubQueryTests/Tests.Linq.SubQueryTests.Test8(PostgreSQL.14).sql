-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 2
	)

