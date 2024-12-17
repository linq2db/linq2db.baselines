﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	) AND
	"p"."ParentID" > 100

