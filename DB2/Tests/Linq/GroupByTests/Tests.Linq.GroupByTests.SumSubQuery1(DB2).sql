﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	Sum("t1"."ParentID" - 3)
FROM
	(
		SELECT
			"ch"."ParentID" + 1 as "ParentID",
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" + 2 > @n
	) "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

