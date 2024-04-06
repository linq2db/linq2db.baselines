﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID",
	(
		SELECT
			SUM("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	) / 2
FROM
	"Parent" "p"
WHERE
	(
		SELECT
			SUM("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	) / 2 > 1

