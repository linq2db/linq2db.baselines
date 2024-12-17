﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	1001
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	1,
	3
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	2,
	1
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	2,
	2
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1001,
	2,
	3
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"GrandChild" t1
WHERE
	 EXISTS (
		SELECT
			"a_Children"."ParentID"
		FROM
			"Parent" p
				INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID"
				INNER JOIN "GrandChild" "a_GrandChildren" ON "a_Children"."ParentID" = "a_GrandChildren"."ParentID" AND "a_Children"."ChildID" = "a_GrandChildren"."ChildID"
		WHERE
			p."ParentID" >= 1000 AND
			t1."ParentID" = "a_GrandChildren"."ParentID" AND
			t1."ChildID" = "a_GrandChildren"."ChildID" AND
			t1."GrandChildID" = "a_GrandChildren"."GrandChildID"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	 EXISTS (
		SELECT
			"a_Children"."ParentID"
		FROM
			"Parent" p
				INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID"
		WHERE
			p."ParentID" >= 1000 AND t1."ParentID" = "a_Children"."ParentID" AND
			t1."ChildID" = "a_Children"."ChildID"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"GrandChild" c_1
WHERE
	c_1."ParentID" >= 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Child" c_1
WHERE
	c_1."ParentID" >= 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

