﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1 DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "p"

