-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1

-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Child" t1

-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"GrandChild" t1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:Id
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:Id
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:Id
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:Id
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11
DECLARE @LeftId Int32
SET     @LeftId = 100
DECLARE @RightId Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	:Id,
	:LeftId,
	:RightId
)

-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "GrandChild" Target
USING (
	SELECT
		t1."ParentID" + t2."ChildID" as "ResultId",
		t1."ParentID" as "LeftId",
		t2."ChildID" as "RightId"
	FROM
		"Parent" t1
			CROSS JOIN "Child" t2
) "Source"
ON (Target."GrandChildID" = "Source"."ResultId")

WHEN NOT MATCHED THEN
INSERT
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	"Source"."ResultId",
	"Source"."LeftId",
	"Source"."RightId"
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."GrandChildID",
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" t1
ORDER BY
	t1."GrandChildID"

