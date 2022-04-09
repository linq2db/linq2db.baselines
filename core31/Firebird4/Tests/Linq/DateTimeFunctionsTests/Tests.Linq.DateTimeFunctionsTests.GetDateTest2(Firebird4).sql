﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT FIRST @take
	"t1"."c1",
	Count(*)
FROM
	(
		SELECT
			Cast(LOCALTIMESTAMP as Date) as "c1"
		FROM
			"Parent" "v"
				INNER JOIN "Child" "s" ON "v"."ParentID" = "s"."ParentID"
		WHERE
			"v"."Value1" > 0
	) "t1"
GROUP BY
	"t1"."c1"

