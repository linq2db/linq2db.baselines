﻿BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p_1"."ParentID",
	"r"."ChildID"
FROM
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
	) "p_1"
		LEFT JOIN "Child" "r" ON "p_1"."ParentID" = "r"."ParentID"

