﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"a_Children"."ParentID",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentID" ORDER BY "a_Children"."ParentID") as "rn"
			FROM
				"Child" "a_Children"
		) "t1" ON "p"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1
WHERE
	"t1"."ParentID" IS NOT NULL

