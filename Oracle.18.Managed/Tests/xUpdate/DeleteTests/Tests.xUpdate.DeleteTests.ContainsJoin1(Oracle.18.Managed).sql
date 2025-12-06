-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @ChildID Int32
SET     @ChildID = 1000

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:ChildID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:ChildID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @ChildID Int32
SET     @ChildID = 1002

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:ChildID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1000

DELETE FROM
	"Parent" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		WHERE
			c_1."ParentID" = :id AND
			c_1."ChildID" NOT IN (1000, 1001) AND
			t1."ParentID" = p."ParentID" AND
			t1."Value1" = p."Value1"
	)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1000

DELETE FROM
	"Parent" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		WHERE
			c_1."ParentID" = :id AND
			c_1."ChildID" NOT IN (1002) AND
			t1."ParentID" = p."ParentID" AND
			t1."Value1" = p."Value1"
	)

