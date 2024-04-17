﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p"

