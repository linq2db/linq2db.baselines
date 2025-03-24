﻿BeforeExecute
--  Firebird.4 Firebird4

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	) AND
	"p"."ParentID" > 100

