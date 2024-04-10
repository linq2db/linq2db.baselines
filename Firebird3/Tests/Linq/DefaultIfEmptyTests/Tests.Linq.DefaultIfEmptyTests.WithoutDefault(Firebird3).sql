﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		LEFT JOIN (
			SELECT FIRST @take
				"t1"."ParentID",
				"t1"."ChildID"
			FROM
				"Child" "t1"
		) "d" ON 1=1

