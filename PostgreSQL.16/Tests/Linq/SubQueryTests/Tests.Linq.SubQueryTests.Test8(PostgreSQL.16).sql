-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

