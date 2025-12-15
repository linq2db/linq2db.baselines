-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" > 1000

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	t1."ParentID" + 1000,
	t1."Value1"
FROM
	(
		SELECT
			c_1."ParentID",
			Floor(c_1."ChildID"::Float / 10)::Int as "Value1"
		FROM
			"Child" c_1
		UNION
		SELECT
			Coalesce(c_2."ParentID", 0) as "ParentID",
			Floor(Coalesce(c_2."GrandChildID", 0)::Float / 100) as "Value1"
		FROM
			"GrandChild" c_2
	) t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" c_1
WHERE
	c_1."ParentID" > 1000

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" > 1000

