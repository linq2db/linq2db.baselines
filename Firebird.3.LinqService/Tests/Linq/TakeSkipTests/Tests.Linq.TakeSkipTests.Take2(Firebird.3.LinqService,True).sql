﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
FETCH NEXT @n ROWS ONLY

