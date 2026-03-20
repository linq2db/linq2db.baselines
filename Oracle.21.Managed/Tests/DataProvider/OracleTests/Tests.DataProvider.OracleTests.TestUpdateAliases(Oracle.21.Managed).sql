-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" t1
		INNER JOIN "Parent" parent_1 ON parent_1."ParentID" = t1."ParentID"
WHERE
	parent_1."ParentID" < 5

-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"Child"
SET
	"ParentID" = (
		SELECT
			child_2."ParentID"
		FROM
			"Child" child_2
				INNER JOIN "Parent" parent_2 ON parent_2."ParentID" = child_2."ParentID"
		WHERE
			parent_2."ParentID" < 5 AND "Child"."ParentID" = child_2."ParentID" AND
			"Child"."ChildID" = child_2."ChildID"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" child_1
				INNER JOIN "Parent" parent_1 ON parent_1."ParentID" = child_1."ParentID"
		WHERE
			parent_1."ParentID" < 5 AND "Child"."ParentID" = child_1."ParentID" AND
			"Child"."ChildID" = child_1."ChildID"
	)

