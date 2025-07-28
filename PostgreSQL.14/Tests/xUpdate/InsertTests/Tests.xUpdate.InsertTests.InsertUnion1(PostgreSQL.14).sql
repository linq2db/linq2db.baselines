BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" > 1000

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
			Floor(c_1."ChildID"::Float / 10::float8)::Int as "Value1"
		FROM
			"Child" c_1
		UNION
		SELECT
			Coalesce(c_2."ParentID", 0) as "ParentID",
			Floor(Coalesce(c_2."GrandChildID", 0)::Float / 100::float8) as "Value1"
		FROM
			"GrandChild" c_2
	) t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" c_1
WHERE
	c_1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" > 1000

