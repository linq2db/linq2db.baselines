﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p_1"."ParentID" = "a_Children"."ParentID"
	)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		FETCH NEXT @take ROWS ONLY
	) "p_1"
ORDER BY
	"p_1"."ParentID" DESC

