﻿BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST @n
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

