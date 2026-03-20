-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = (
		SELECT
			c_2."ChildID" + 1
		FROM
			"Child" c_2
				LEFT JOIN "Parent" a_Parent_1 ON c_2."ParentID" = a_Parent_1."ParentID"
		WHERE
			c_2."ChildID" = :id AND
			a_Parent_1."Value1" = 1 AND
			"Child"."ParentID" = c_2."ParentID" AND
			"Child"."ChildID" = c_2."ChildID"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
				LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"
		WHERE
			c_1."ChildID" = :id AND
			a_Parent."Value1" = 1 AND
			"Child"."ParentID" = c_1."ParentID" AND
			"Child"."ChildID" = c_1."ChildID"
	)

