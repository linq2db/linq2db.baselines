﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @defValue Integer(4) -- Int32
SET     @defValue = 10

SELECT 
	Coalesce(Min("t1"."ParentID"), @defValue)
FROM
	"Parent" "t1"

