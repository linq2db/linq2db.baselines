﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p_1"."ParentID",
	"r"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		FETCH NEXT @take ROWS ONLY
	) "p_1"
		LEFT JOIN "Child" "r" ON "p_1"."ParentID" = "r"."ParentID"

