-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"GrandChild" gc
WHERE
	gc."GrandChildID" IN (1001, 1002)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1,
	1,
	1001
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1,
	2,
	1002
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"GrandChild" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" gc
				INNER JOIN "Parent" "a_Parent" ON gc."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = 1 AND
			gc."GrandChildID" IN (1001, 1002) AND
			t1."ParentID" = gc."ParentID" AND
			t1."ChildID" = gc."ChildID" AND
			t1."GrandChildID" = gc."GrandChildID"
	)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

