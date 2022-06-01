BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"GrandChild" t1
WHERE
	t1."GrandChildID" IN (1001, 1002)

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"GrandChild" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" gc
				INNER JOIN "Parent" a_Parent ON gc."ParentID" = a_Parent."ParentID"
		WHERE
			a_Parent."ParentID" = 1 AND
			gc."GrandChildID" IN (1001, 1002) AND
			t1."ParentID" = gc."ParentID" AND
			(t1."ChildID" = gc."ChildID" OR t1."ChildID" IS NULL AND gc."ChildID" IS NULL) AND
			(t1."GrandChildID" = gc."GrandChildID" OR t1."GrandChildID" IS NULL AND gc."GrandChildID" IS NULL)
	)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"GrandChild" gc
WHERE
	gc."ParentID" = 1

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"GrandChild" t1
WHERE
	t1."GrandChildID" IN (1001, 1002)

