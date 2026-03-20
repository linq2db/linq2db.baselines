-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			c_2."ParentID"
		FROM
			"Child" c_2
		WHERE
			c_2."ChildID" = 11
	) + 1000
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		WHERE
			p."ParentID" = 1 AND "Parent"."ParentID" = p."ParentID" AND
			("Parent"."Value1" = p."Value1" OR "Parent"."Value1" IS NULL AND p."Value1" IS NULL)
	)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

UPDATE
	"Parent" t1
SET
	"ParentID" = :ParentID
WHERE
	t1."ParentID" = 1001

