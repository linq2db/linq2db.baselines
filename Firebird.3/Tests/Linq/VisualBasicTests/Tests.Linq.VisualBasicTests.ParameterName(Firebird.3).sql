﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @VBLocal_id Integer -- Int32
SET     @VBLocal_id = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @VBLocal_id

