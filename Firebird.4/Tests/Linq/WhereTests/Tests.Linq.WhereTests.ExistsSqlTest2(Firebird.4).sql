﻿BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	) AND
	"p"."ParentID" > 100

