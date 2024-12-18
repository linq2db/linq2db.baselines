﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = "Child"."ChildID" + 1
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
			a_Parent."Value1" IS NOT NULL AND
			"Child"."ParentID" = c_1."ParentID" AND
			"Child"."ChildID" = c_1."ChildID"
	)

