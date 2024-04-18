﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ChildID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "t1"
			WHERE
				"p"."ParentID" = "t1"."ParentID" AND "p"."ChildID" = "t1"."ChildID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Child" "p"
UNION ALL
SELECT
	"p_1"."ChildID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "t2"
			WHERE
				"p_1"."ParentID" = "t2"."ParentID" AND "p_1"."ChildID" = "t2"."ChildID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Child" "p_1"

