-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" t1
		INNER JOIN "Parent" parent_1 ON parent_1."ParentID" = t1."ParentID"
WHERE
	parent_1."ParentID" < 5

-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"Child"
SET
	"ParentID" = "Child"."ParentID"
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

