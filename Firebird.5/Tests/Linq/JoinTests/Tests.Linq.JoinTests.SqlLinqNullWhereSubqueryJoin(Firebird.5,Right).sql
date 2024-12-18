﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p1"."ParentID",
			"p1"."Value1"
		FROM
			"Parent" "p1"
		FETCH NEXT @take ROWS ONLY
	) "p1_1"
		RIGHT JOIN (
			SELECT
				"p2"."ParentID",
				"p2"."Value1"
			FROM
				"Parent" "p2"
			FETCH NEXT @take_1 ROWS ONLY
		) "t1" ON "p1_1"."ParentID" = "t1"."ParentID" AND ("p1_1"."Value1" = "t1"."Value1" AND "p1_1"."Value1" IS NOT NULL AND "t1"."Value1" IS NOT NULL OR "p1_1"."Value1" IS NULL AND "t1"."Value1" IS NULL)

