-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Child" t1

-- Oracle.11.Managed Oracle11

DELETE FROM
	"GrandChild" t1

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

MERGE INTO "GrandChild" Target
USING (
	SELECT
		t2."ChildID" as "RightId"
	FROM
		"Parent" t1
			CROSS JOIN "Child" t2
) "Source"
ON (Target."GrandChildID" = "Source"."RightId")

WHEN NOT MATCHED THEN
INSERT
(
	"ChildID"
)
VALUES
(
	"Source"."RightId"
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."GrandChildID",
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" t1

