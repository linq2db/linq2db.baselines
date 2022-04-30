﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"GrandChild" t1
WHERE
	t1."GrandChildID" IN (1001, 1002)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"GrandChild" t1
WHERE
	t1."GrandChildID" IN (1001, 1002)

