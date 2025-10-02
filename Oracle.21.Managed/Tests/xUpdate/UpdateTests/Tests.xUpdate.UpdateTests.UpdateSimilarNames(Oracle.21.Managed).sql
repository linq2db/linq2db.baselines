BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 20000

UPDATE
	"Child"
SET
	"ParentID" = :ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" child_1
				INNER JOIN "Child" parent_1 ON parent_1."ParentID" = child_1."ParentID"
		WHERE
			child_1."Value1" = 20000 AND "Child"."ParentID" = parent_1."ParentID" AND
			"Child"."ChildID" = parent_1."ChildID"
	)

