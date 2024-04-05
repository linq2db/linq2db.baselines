﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"Parent"
SET
	"Value1" = NULL
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" x
				INNER JOIN "Parent" a_Values ON x."ParentID" = a_Values."Value1"
		WHERE
			x."ParentID" IN (0, 0) AND "Parent"."ParentID" = a_Values."ParentID"
	)

