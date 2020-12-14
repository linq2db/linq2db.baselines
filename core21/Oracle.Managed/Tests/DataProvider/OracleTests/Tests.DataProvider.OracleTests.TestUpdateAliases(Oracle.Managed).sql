BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Child" child_1
		INNER JOIN "Parent" parent_1 ON parent_1."ParentID" = child_1."ParentID" AND parent_1."ParentID" < 5

BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	"Child"
SET
	"Child"."ParentID" = "Child"."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" child_1
				INNER JOIN "Parent" parent_1 ON parent_1."ParentID" = child_1."ParentID" AND parent_1."ParentID" < 5
		WHERE
			"Child"."ParentID" = child_1."ParentID" AND "Child"."ChildID" = child_1."ChildID"
	)

