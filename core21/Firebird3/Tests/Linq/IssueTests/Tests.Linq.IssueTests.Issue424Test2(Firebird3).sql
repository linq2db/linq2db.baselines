﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
	) "t2"
ORDER BY
	"t2"."ParentID"

