﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 300000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

