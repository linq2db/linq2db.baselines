﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

