BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

UPDATE
	"Parent"
SET
	"Value1" = 5
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" child_1
				LEFT JOIN "Parent" a_Parent ON child_1."ParentID" = a_Parent."ParentID"
		WHERE
			child_1."ChildID" = 10000 AND "Parent"."ParentID" = a_Parent."ParentID" AND
			("Parent"."Value1" = a_Parent."Value1" OR "Parent"."Value1" IS NULL AND a_Parent."Value1" IS NULL)
	)

