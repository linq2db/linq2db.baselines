-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" IN (1001, 1002)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	1001
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	1002
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
				INNER JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = 1 AND
			c_1."ChildID" IN (1001, 1002) AND
			t1."ParentID" = c_1."ParentID" AND
			t1."ChildID" = c_1."ChildID"
	)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = 1

