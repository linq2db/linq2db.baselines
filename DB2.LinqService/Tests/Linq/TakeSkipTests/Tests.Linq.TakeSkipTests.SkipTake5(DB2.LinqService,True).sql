﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
OFFSET 2 ROWS FETCH NEXT @take ROWS ONLY 

