﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)
FROM
	(
		SELECT
			"t2"."ParentID"
		FROM
			"Parent" "t2"
		FETCH NEXT @take ROWS ONLY
	) "p"
ORDER BY
	"p"."ParentID" DESC

