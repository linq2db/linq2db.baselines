﻿BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT 
	"p_1"."ParentID", 
	"c_1"."ChildID"
FROM
	( 
		SELECT FIRST @take 
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
	) "p_1"
		RIGHT JOIN "Child" "c_1" ON "p_1"."ParentID" = "c_1"."ParentID"

