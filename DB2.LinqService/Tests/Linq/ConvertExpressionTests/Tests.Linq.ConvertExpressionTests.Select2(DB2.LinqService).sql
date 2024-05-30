﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			SUM("a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 1 AND
			"a_Children"."ParentID" < 10
	)
FROM
	"Parent" "p"

