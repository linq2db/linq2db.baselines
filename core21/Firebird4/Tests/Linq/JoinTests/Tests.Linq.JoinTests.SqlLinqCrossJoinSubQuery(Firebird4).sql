﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

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
		CROSS JOIN (
			SELECT FIRST @take_1
				"t1"."ChildID"
			FROM
				"Child" "t1"
		) "c_1"

