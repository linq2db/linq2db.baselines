﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	"p1"."Value1"
FROM
	"Parent" "p1"
WHERE
	"p1"."ParentID" > 3
UNION
SELECT
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p2"
WHERE
	"p2"."ParentID" <= 3

