﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @someValue Integer(4) -- Int32
SET     @someValue = 3

SELECT
	CAST(@someValue AS Int),
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" <= CAST(@someValue AS Int)
UNION ALL
SELECT
	CAST(@someValue AS Int),
	"c_2"."ChildID"
FROM
	"Child" "c_2"
WHERE
	"c_2"."ChildID" > CAST(@someValue AS Int)

