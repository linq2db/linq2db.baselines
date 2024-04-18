﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
	)

