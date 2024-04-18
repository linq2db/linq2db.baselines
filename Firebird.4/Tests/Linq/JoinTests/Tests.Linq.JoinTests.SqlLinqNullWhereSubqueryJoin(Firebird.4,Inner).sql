﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

SELECT
	"p2"."ParentID",
	"p2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
		FETCH NEXT @take ROWS ONLY
	) "p1"
		INNER JOIN (
			SELECT
				"t2"."ParentID",
				"t2"."Value1"
			FROM
				"Parent" "t2"
			FETCH NEXT @take_1 ROWS ONLY
		) "p2" ON "p1"."ParentID" = "p2"."ParentID" AND ("p1"."Value1" = "p2"."Value1" OR "p1"."Value1" IS NULL AND "p2"."Value1" IS NULL)

