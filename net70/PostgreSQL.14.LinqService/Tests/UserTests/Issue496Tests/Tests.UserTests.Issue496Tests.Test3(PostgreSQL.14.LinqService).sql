BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON Cast(cp."ParentID" as BigInt) = c_1."ParentID"
WHERE
	cp."ParentID" = 1

